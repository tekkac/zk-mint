use starknet::ContractAddress;

use snforge_std::{declare, DeclareResultTrait, ContractClassTrait};

use crate::contract::interface::{IZKMintDispatcher, IZKMintDispatcherTrait};


fn deploy_contract(name: ByteArray) -> ContractAddress {
    let contract = declare(name).unwrap().contract_class();
    let (contract_address, _) = contract.deploy(@array![]).unwrap();
    contract_address
}

#[test]
fn test_set_verifier() {
    let contract_address = deploy_contract("ZKMint");
    let contract = IZKMintDispatcher { contract_address };

    let verifier = contract.get_verifier();
    assert_eq!(verifier.class_hash.into(), 0, "verifier already set");
    contract.set_verifier(1.try_into().unwrap());
}

