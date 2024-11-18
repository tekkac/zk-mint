use crate::metadata::svg;
use crate::contract::interface::{IZKMintDispatcher, IZKMintDispatcherTrait};

use starknet::get_contract_address;

#[derive(Drop)]
pub struct Data {
    pub num_factors: ByteArray,
    pub solver_number: ByteArray,
    pub reward_ticker: ByteArray,
}

#[starknet::interface]
pub trait ISymbol<TContractState> {
    fn symbol(self: @TContractState) -> felt252;
}

#[inline(always)]
pub fn generate(token_id: u256) -> ByteArray {
    let contract_address = get_contract_address();
    let zkmint = IZKMintDispatcher { contract_address };
    let (num_factors, reward_token) = zkmint.get_metadata(token_id);
    let solver_number = zkmint.get_num_solvers();
    let ticker: felt252 = ISymbolDispatcher { contract_address: reward_token }.symbol();
    let mut reward_ticker: ByteArray = "";
    reward_ticker.append_word(ticker, string_size(ticker));

    let data = Data {
        num_factors: format!("{}", num_factors),
        solver_number: format!("{}", solver_number),
        reward_ticker: format!("{}", reward_ticker),
    };
    generate_json_(data)
}

fn string_size(s: felt252) -> u32 {
    let mut val: u256 = s.into();
    let mut size = 0;
    while val != 0 {
        size += 1;
        val /= 0x100;
    };
    size
}

#[inline(always)]
fn generate_json_(data: Data) -> ByteArray {
    let svg_data = svg::generate(@data);
    format!(
        "data:application/json,{{\"name\": \"ZkMint\",\"description\": \"ZkMint is a NFT project using zero-knowledge proofs to mint tokens.\",\"image\": \"data:image/svg+xml;base64,{svg_data}\",\"attributes\": [{{\"display_type\": \"number\",\"trait_type\": \"Score\",\"value\": {}}},{{\"trait_type\": \"Reward\",\"value\": \"{}\"}}]}}",
        data.num_factors,
        data.reward_ticker
    )
}
