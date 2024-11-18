#[starknet::contract]
pub mod ZKMint {
    use starknet::storage::{
        StoragePointerWriteAccess, StoragePointerReadAccess, StoragePathEntry, Map
    };
    use starknet::{
        get_caller_address, get_contract_address, ContractAddress, ClassHash, contract_address_const
    };

    use openzeppelin_access::ownable::OwnableComponent;
    use openzeppelin_token::erc20::{ERC20ABIDispatcher, ERC20ABIDispatcherTrait};
    use openzeppelin_introspection::src5::SRC5Component;
    use openzeppelin_token::erc721::{ERC721Component, ERC721HooksEmptyImpl};
    use openzeppelin_token::erc721::interface::{IERC721Metadata, IERC721MetadataCamelOnly};
    use openzeppelin_upgrades::UpgradeableComponent;
    use openzeppelin_upgrades::interface::IUpgradeable;

    use crate::contract::interface::IZKMint;
    use crate::verifier::groth16_verifier::{
        IGroth16VerifierBN254LibraryDispatcher as IVerifierLibraryDispatcher,
        IGroth16VerifierBN254DispatcherTrait as IVerifierDispatcherTrait
    };

    component!(path: OwnableComponent, storage: ownable, event: OwnableEvent);
    component!(path: ERC721Component, storage: erc721, event: ERC721Event);
    component!(path: SRC5Component, storage: src5, event: SRC5Event);
    component!(path: UpgradeableComponent, storage: upgradeable, event: UpgradeableEvent);

    #[abi(embed_v0)]
    impl ERC721Impl = ERC721Component::ERC721Impl<ContractState>;
    #[abi(embed_v0)]
    impl ERC721CamelOnly = ERC721Component::ERC721CamelOnlyImpl<ContractState>;
    #[abi(embed_v0)]
    impl SRC5Impl = SRC5Component::SRC5Impl<ContractState>;
    impl ERC721InternalImpl = ERC721Component::InternalImpl<ContractState>;
    #[abi(embed_v0)]
    impl OwnableMixinImpl = OwnableComponent::OwnableMixinImpl<ContractState>;
    impl OwnableInternalImpl = OwnableComponent::InternalImpl<ContractState>;
    impl UpgradeableInternalImpl = UpgradeableComponent::InternalImpl<ContractState>;

    #[storage]
    struct Storage {
        minted: Map<ContractAddress, bool>,
        verifier: IVerifierLibraryDispatcher,
        tokens: Map<u32, ContractAddress>,
        num_tokens: u32,
        num_solvers: u32,
        factors_count: Map<u256, u32>,
        metadata: Map<u256, (u256, ContractAddress)>,
        total_supply: u256,
        #[substorage(v0)]
        pub erc721: ERC721Component::Storage,
        #[substorage(v0)]
        pub src5: SRC5Component::Storage,
        #[substorage(v0)]
        pub ownable: OwnableComponent::Storage,
        #[substorage(v0)]
        pub upgradeable: UpgradeableComponent::Storage
    }

    #[event]
    #[derive(Drop, starknet::Event)]
    enum Event {
        #[flat]
        ERC721Event: ERC721Component::Event,
        #[flat]
        SRC5Event: SRC5Component::Event,
        #[flat]
        OwnableEvent: OwnableComponent::Event,
        #[flat]
        UpgradeableEvent: UpgradeableComponent::Event
    }

    #[constructor]
    fn constructor(ref self: ContractState, owner: ContractAddress) {
        // $strk
        self
            ._add_token(
                contract_address_const::<
                    0x04718f5a0fc34cc1af16a1cdee98ffb20c31f5cd61d6ab07201858f4287c938d
                >()
            );
        // $brother
        self
            ._add_token(
                contract_address_const::<
                    0x3b405a98c9e795d427fe82cdeeeed803f221b52471e3a757574a2b4180793ee
                >()
            );
        // $lords
        self
            ._add_token(
                contract_address_const::<
                    0x3b405a98c9e795d427fe82cdeeeed803f221b52471e3a757574a2b4180793ee
                >()
            );

        self.erc721.initializer("ZKMint", "ZKMint", "will tell you later, or not");
        self.ownable.initializer(owner);
    }

    #[abi(embed_v0)]
    impl UpgradeableImpl of IUpgradeable<ContractState> {
        fn upgrade(ref self: ContractState, new_class_hash: ClassHash) {
            self.ownable.assert_only_owner();
            self.upgradeable.upgrade(new_class_hash);
        }
    }

    #[abi(embed_v0)]
    impl ZKMintImpl of IZKMint<ContractState> {
        fn mint_with_proof(ref self: ContractState, proof: Span<felt252>) {
            let caller = get_caller_address();
            // Assert caller has not minted before
            assert!(!self.minted.entry(caller).read(), "already minted");

            // verify the proof
            let verifier = self.get_verifier();
            let result = verifier.verify_groth16_proof_bn254(proof);
            assert!(result.is_some(), "invalid proof");

            let public_inputs = result.unwrap();
            let num_factors = *public_inputs[0];
            let address = public_inputs[1];
            let caller_u256: u256 = Into::<_, felt252>::into(caller).into();
            assert!(address == @caller_u256, "invalid public inputs");

            // send some tokens to the caller
            let index = self._send_reward(caller, num_factors);

            // update the state
            self
                .factors_count
                .entry(num_factors)
                .write(self.factors_count.entry(num_factors).read() + 1);

            self.num_solvers.write(self.num_solvers.read() + 1);

            let supply = self.total_supply.read();
            self.erc721.mint(caller, supply + 1);
            self.total_supply.write(supply + 1);

            let token_address = self.tokens.entry(index).read();
            self.metadata.entry(supply + 1).write((num_factors, token_address));
            self.minted.entry(caller).write(true);
        }

        fn set_verifier(ref self: ContractState, verifier: ClassHash) {
            // verify that the caller is the owner
            self.ownable.assert_only_owner();
            self.verifier.write(IVerifierLibraryDispatcher { class_hash: verifier });
        }

        fn get_verifier(ref self: ContractState) -> IVerifierLibraryDispatcher {
            self.verifier.read()
        }

        fn get_metadata(ref self: ContractState, token_id: u256) -> (u256, ContractAddress) {
            self.metadata.entry(token_id).read()
        }

        fn get_num_solvers(ref self: ContractState) -> u32 {
            self.num_solvers.read()
        }

        // temporary
        fn owner_mint(ref self: ContractState) {
            let caller = get_caller_address();
            self.ownable.assert_only_owner();
            let new_supply = self.total_supply.read() + 1;

            self.erc721.mint(caller, new_supply);
            self.total_supply.write(new_supply);

            let token_address = self.tokens.entry(0).read();
            self.metadata.entry(new_supply).write((0, token_address));
            self.minted.entry(caller).write(true);
        }

        fn owner_withdraw(ref self: ContractState, index: u32) {
            self.ownable.assert_only_owner();
            let token_address = self.tokens.entry(index).read();
            let token = ERC20ABIDispatcher { contract_address: token_address };
            token.transfer(self.ownable.owner(), token.balance_of(get_contract_address()));
        }
    }

    #[abi(embed_v0)]
    impl ERC721Metadata of IERC721Metadata<ContractState> {
        fn name(self: @ContractState) -> ByteArray {
            self.erc721.ERC721_name.read()
        }

        fn symbol(self: @ContractState) -> ByteArray {
            self.erc721.ERC721_symbol.read()
        }

        fn token_uri(self: @ContractState, token_id: u256) -> ByteArray {
            assert(self.erc721.exists(token_id), 'Token does not exist');
            crate::metadata::json::generate(token_id)
        }
    }

    #[abi(embed_v0)]
    impl ERC721MetadataCamelOnly of IERC721MetadataCamelOnly<ContractState> {
        fn tokenURI(self: @ContractState, tokenId: u256) -> ByteArray {
            assert(self.erc721.exists(tokenId), 'Token does not exist');
            crate::metadata::json::generate(tokenId)
        }
    }


    #[generate_trait]
    impl Private of PrivateTrait {
        fn _send_reward(ref self: ContractState, caller: ContractAddress, coeff: u256) -> u32 {
            let index: u32 = self._get_random_index();
            let token_address = self.tokens.entry(index).read();
            let token = ERC20ABIDispatcher { contract_address: token_address };
            let this = get_contract_address();
            let balance = token.balance_of(this);

            let reward = balance * coeff * coeff / 31337;

            token.transfer(caller, reward);
            index
        }

        fn _get_random_index(self: @ContractState) -> u32 {
            let STRK_ADDRESS: ContractAddress = contract_address_const::<
                0x04718f5a0fc34cc1af16a1cdee98ffb20c31f5cd61d6ab07201858f4287c938d
            >();
            let strk = ERC20ABIDispatcher { contract_address: STRK_ADDRESS };
            let sequencer = contract_address_const::<
                0x01176a1bd84444c89232ec27754698e5d2e7e1a7f1539f12027f28b23ec9f3d8
            >();

            let randomness = strk.balance_of(sequencer);
            let num_tokens = self.num_tokens.read();
            (randomness % num_tokens.into()).try_into().unwrap()
        }

        fn _add_token(ref self: ContractState, address: ContractAddress) {
            let num_token = self.num_tokens.read();
            self.tokens.entry(num_token).write(address);
            self.num_tokens.write(num_token + 1);
        }
    }
}
