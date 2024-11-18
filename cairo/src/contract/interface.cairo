use starknet::{ContractAddress, ClassHash};
use crate::verifier::groth16_verifier::IGroth16VerifierBN254LibraryDispatcher as IVerifierLibraryDispatcher;

#[starknet::interface]
pub trait IZKMint<TContractState> {
    fn mint_with_proof(ref self: TContractState, proof: Span<felt252>);
    fn set_verifier(ref self: TContractState, verifier: ClassHash);
    fn get_verifier(ref self: TContractState) -> IVerifierLibraryDispatcher;
    fn get_metadata(ref self: TContractState, token_id: u256) -> (u256, ContractAddress);
    fn get_num_solvers(ref self: TContractState) -> u32;
    fn owner_mint(ref self: TContractState);
    fn owner_withdraw(ref self: TContractState, index: u32);
}
