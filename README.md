# 🎫 Decentralized Raffle System

A fully decentralized, transparent, and provably fair raffle system built on Ethereum using Solidity and Foundry.

## 📋 Overview

This project implements a smart contract-based raffle system where users can:
- Enter the raffle by paying an entrance fee
- Have a random winner selected automatically after a time interval
- Receive the entire prize pool in a transparent and verifiable manner
- Trust the process through Chainlink VRF for provable randomness

## 🛠️ Tech Stack

- **Solidity** - Smart contract development
- **Foundry** - Development framework and testing
- **Chainlink VRF** - Verifiable random number generation
- **Sepolia Testnet** - Ethereum test network

## 🎯 Features

- **Automated Winner Selection**: Uses Chainlink Keepers for automated execution
- **Provable Fairness**: Chainlink VRF ensures random winner selection
- **Time-Based Rounds**: Raffle runs in timed intervals
- **Multiple Player Support**: Unlimited participants per round
- **Transparent Process**: All operations are on-chain and verifiable
- **Gas Optimized**: Efficient contract design for lower gas costs

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
