#[starknet::contract]
pub mod ZKMint {
    use starknet::storage::{
        StoragePointerWriteAccess, StoragePointerReadAccess, StoragePathEntry, Map
    };
    use starknet::{get_caller_address, ContractAddress, ClassHash};

    //use openzeppelin_token::erc20::{ERC20Component, ERC20HooksEmptyImpl};
    //use openzeppelin_token::erc20::{ERC20ABIDispatcher, ERC20ABIDispatcherTrait};

    use zkmint::contract::interface::{
        IZKMint, IVerifierLibraryDispatcher, IVerifierDispatcherTrait
    };

    #[storage]
    struct Storage {
        minted: Map<ContractAddress, u256>,
        verifier: IVerifierLibraryDispatcher,
    }

    #[abi(embed_v0)]
    impl ZKMintImpl of IZKMint<ContractState> {
        fn mint_with_proof(ref self: ContractState, proof: Array<felt252>) {
            let caller = get_caller_address();
            // verify proof
            //
            let verifier = self.get_verifier();
            verifier.verify_groth16_bn254(proof);
            self.minted.entry(caller).write(0);
        }

        fn set_verifier(ref self: ContractState, verifier: ClassHash) {
            // verify that the caller is the owner
            self.verifier.write(IVerifierLibraryDispatcher { class_hash: verifier });
        }

        fn get_verifier(ref self: ContractState) -> IVerifierLibraryDispatcher {
            self.verifier.read()
        }
    }
}
