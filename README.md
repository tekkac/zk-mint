# Cairo/Starknet starter template

## About
A simple starter pack for all Cairo and Starknet contracts development and testing including:

 - [x] asdf scarb configuration
 - [x] Scarb CI for formatting, building and testing.
 - [x] Starknet-foundry tests
 - [x] Coverage CI
 - [ ] Cairo profiling

## Development

### Pre-requisites
 - [asdf](https://asdf-vm.com/guide/getting-started.html)
 - [Scarb >= v2.8.2](https://docs.swmansion.com/scarb/)

### Setup
```bash
asdf plugin add scarb
asdf plugin add starknet-foundry
asdf install scarb latest
asdf global scarb latest
```
### Usage

```bash
scarb fmt
scarb build
scarb test
```



