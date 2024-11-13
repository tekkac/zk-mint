#[starknet::contract]
pub mod ZKMint {
    use starknet::storage::{
        StoragePointerWriteAccess, StoragePointerReadAccess, StoragePathEntry, Map
    };
    use starknet::{
        get_caller_address, get_contract_address, ContractAddress, ClassHash, contract_address_const
    };

    use openzeppelin_token::erc20::{ERC20ABIDispatcher, ERC20ABIDispatcherTrait};

    use crate::contract::interface::IZKMint;
    use crate::verifier::groth16_verifier::{
        IGroth16VerifierBN254LibraryDispatcher as IVerifierLibraryDispatcher,
        IGroth16VerifierBN254DispatcherTrait as IVerifierDispatcherTrait
    };

    #[storage]
    struct Storage {
        minted: Map<ContractAddress, bool>,
        verifier: IVerifierLibraryDispatcher,
    }

    #[abi(embed_v0)]
    impl ZKMintImpl of IZKMint<ContractState> {
        fn mint_with_proof(ref self: ContractState, proof: Span<felt252>) {
            let caller = get_caller_address();
            // verify proof
            //
            let verifier = self.get_verifier();
            let result = verifier.verify_groth16_proof_bn254(proof);
            assert!(result.is_some(), "invalid proof");
            let public_inputs = result.unwrap();

            assert!(!self.minted.entry(caller).read(), "already minted");
            let caller_u256: u256 = Into::<_, felt252>::into(caller).into();

            assert!(public_inputs[1] == @caller_u256, "invalid public inputs");

            // send some tokens to the caller
            self._send_reward(caller, *public_inputs[0]);

            self.minted.entry(caller).write(true);
        }

        fn set_verifier(ref self: ContractState, verifier: ClassHash) {
            // verify that the caller is the owner
            self.verifier.write(IVerifierLibraryDispatcher { class_hash: verifier });
        }

        fn get_verifier(ref self: ContractState) -> IVerifierLibraryDispatcher {
            self.verifier.read()
        }
    }

    #[generate_trait]
    impl Private of PrivateTrait {
        fn _send_reward(ref self: ContractState, caller: ContractAddress, coeff: u256) {
            // send some tokens to the caller
            // let STRK_ADDRESS_FELT =
            // 0x04718f5a0fc34cc1af16a1cdee98ffb20c31f5cd61d6ab07201858f4287c938d;
            let STRK_ADDRESS: ContractAddress = contract_address_const::<
                0x04718f5a0fc34cc1af16a1cdee98ffb20c31f5cd61d6ab07201858f4287c938d
            >();
            let strk = ERC20ABIDispatcher { contract_address: STRK_ADDRESS };
            let this = get_contract_address();
            let balance = strk.balance_of(this);

            let reward = balance * coeff * coeff / 31337;

            strk.transfer(caller, reward);
        }
    }
}
