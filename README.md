<p align="center">
  <h1 align="center">
    ZKMint
  </h1>
  <p align="center"><i>A simple example of verifying zk-Snarks on Starknet.</i></p>
</p>

<p align="center">
    <a href="./.github/workflows/test.yml" target="_blank">
<img alt="Workflow: Tests" src="https://github.com/tekkac/zk-mint/actions/workflows/test.yml/badge.svg?branch=main">
</a>
    <a href="https://opensource.org/licenses/MIT" target="_blank">
<img src="https://img.shields.io/badge/license-MIT-blue.svg">
</a>
</p>


## ⚡ About

A example project that shows how to use Garaga and Circom to create a contract that verifies zk-Snarks on-chain.

Mint using a zero-knowledge proof.

## Development

### Pre-requisites
  - [Scarb >= v2.8.4](https://docs.swmansion.com/scarb/)
  - [starknet-foundry](https://foundry-rs.github.io/starknet-foundry/getting-started/installation.html)
  - [circom/snarkjs](https://docs.circom.io/getting-started/installation/)
  - [garaga](https://garaga.gitbook.io/garaga)
  - (optional) [bun](https://bun.sh/)

### 🛠️ Build
**Cairo**
```bash
$ cd cairo
$ scarb build
$ scarb test
```

**circom**
```bash
$ ./scripts/genproof.sh solve
$ ./scripts/verifyproof.sh
```

> [!NOTE]
>
> Check the `script` folders for more info

