use starknet::{ContractAddress, contract_address_const};

use snforge_std::{
    declare, DeclareResultTrait, ContractClassTrait, start_cheat_caller_address,
    stop_cheat_caller_address
};
use openzeppelin_token::erc20::{ERC20ABIDispatcher, ERC20ABIDispatcherTrait};
use openzeppelin_token::erc721::interface::{
    IERC721MetadataDispatcher, IERC721MetadataDispatcherTrait
};

use crate::verifier::groth16_verifier::{
    IGroth16VerifierBN254LibraryDispatcher as IVerifierLibraryDispatcher,
    IGroth16VerifierBN254DispatcherTrait as IVerifierDispatcherTrait
};
use crate::contract::interface::{IZKMintDispatcher, IZKMintDispatcherTrait};
use crate::tests::mock_proof::get_proof;


fn deploy_contract(name: ByteArray, calldata: Array<felt252>) -> ContractAddress {
    let contract = declare(name).unwrap().contract_class();
    let (contract_address, _) = contract.deploy(@calldata).unwrap();
    contract_address
}

#[test]
fn test_get_verifier() {
    let owner = contract_address_const::<'OWNER'>();
    let contract_address = deploy_contract("ZKMint", array![owner.into()]);
    let contract = IZKMintDispatcher { contract_address };

    let verifier = contract.get_verifier();
    assert_eq!(verifier.class_hash.into(), 0, "verifier already set");
}

#[test]
#[fork(url: "https://starknet-mainnet.public.blastapi.io/rpc/v0_7", block_tag: latest)]
fn test_verify() {
    let class_hash = *declare("Groth16VerifierBN254").unwrap().contract_class().class_hash;

    let verifier = IVerifierLibraryDispatcher { class_hash };
    let result = verifier.verify_groth16_proof_bn254(get_proof());
    assert!(result.is_some(), "invalid proof");
}

#[test]
#[fork(url: "https://starknet-mainnet.public.blastapi.io/rpc/v0_7", block_tag: latest)]
fn test_e2e() {
    let owner = contract_address_const::<'OWNER'>();
    let STRK_ADDRESS: ContractAddress = contract_address_const::<
        0x04718f5a0fc34cc1af16a1cdee98ffb20c31f5cd61d6ab07201858f4287c938d
    >();
    let strk = ERC20ABIDispatcher { contract_address: STRK_ADDRESS };
    let class_hash = *declare("Groth16VerifierBN254").unwrap().contract_class().class_hash;
    let contract_address = deploy_contract("ZKMint", array!['OWNER']);
    let contract = IZKMintDispatcher { contract_address };
    let nft = IERC721MetadataDispatcher { contract_address };
    let user_address = contract_address_const::<
        0x07528ca486aabd963319173b83221680838952d1ae4ab7f50fd369197b9d3487
    >();
    let binance = contract_address_const::<
        0x0213c67ed78bc280887234fe5ed5e77272465317978ae86c25a71531d9332a2d
    >();
    start_cheat_caller_address(STRK_ADDRESS.into(), binance);
    strk.transfer(contract_address, 100_000000000000000000.into());
    stop_cheat_caller_address(STRK_ADDRESS);

    start_cheat_caller_address(contract_address, owner);
    contract.set_verifier(class_hash);
    contract.add_token(STRK_ADDRESS.into());

    stop_cheat_caller_address(contract_address);
    start_cheat_caller_address(contract_address, user_address);
    contract.mint_with_proof(get_proof());

    let uri = nft.token_uri(1);
    assert!(uri.len() > 100, "invalid uri");
}

#[test]
#[fork(url: "https://starknet-mainnet.public.blastapi.io/rpc/v0_7", block_tag: latest)]
fn test_randomness() {
    let STRK_ADDRESS: ContractAddress = contract_address_const::<
        0x04718f5a0fc34cc1af16a1cdee98ffb20c31f5cd61d6ab07201858f4287c938d
    >();
    let strk = ERC20ABIDispatcher { contract_address: STRK_ADDRESS };
    let sequencer = contract_address_const::<
        0x01176a1bd84444c89232ec27754698e5d2e7e1a7f1539f12027f28b23ec9f3d8
    >();

    let _ = strk.balance_of(sequencer);
}
