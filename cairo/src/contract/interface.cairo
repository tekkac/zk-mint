use starknet::ClassHash;
use crate::verifier::groth16_verifier::IGroth16VerifierBN254LibraryDispatcher as IVerifierLibraryDispatcher;

#[starknet::interface]
pub trait IZKMint<TContractState> {
    fn mint_with_proof(ref self: TContractState, proof: Span<felt252>);
    fn set_verifier(ref self: TContractState, verifier: ClassHash);
    fn get_verifier(ref self: TContractState) -> IVerifierLibraryDispatcher;
}
