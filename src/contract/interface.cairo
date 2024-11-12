use starknet::ClassHash;

#[starknet::interface]
pub trait IZKMint<TContractState> {
    fn mint_with_proof(ref self: TContractState, proof: Array<felt252>);
    fn set_verifier(ref self: TContractState, verifier: ClassHash);
    fn get_verifier(ref self: TContractState) -> IVerifierLibraryDispatcher;
}

#[starknet::interface]
pub trait IVerifier<TContractState> {
    fn verify_groth16_bn254(ref self: TContractState, proof: Array<felt252>);
}

