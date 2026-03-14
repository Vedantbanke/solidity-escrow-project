# solidity-escrow-project
A decentralized escrow smart contract written in Solidity that allows secure payments between a buyer and seller.
# Escrow Smart Contract

## Overview

This project implements a decentralized escrow smart contract written in Solidity. The contract acts as a trusted intermediary between a buyer and a seller by securely holding funds until the buyer approves the transaction.

## How It Works

1. The buyer deploys the contract and specifies the seller's address.
2. The buyer deposits ETH into the escrow contract.
3. After the service or product is delivered, the buyer approves the transaction.
4. The contract releases the payment to the seller securely.

## Features

* Secure ETH deposit by the buyer
* Buyer approval mechanism
* Protection against double payment
* Safe ETH transfer using the `call()` method
* Simple escrow workflow

## Smart Contract Workflow

Buyer → Deposit ETH → Approve Transaction → Release Payment → Seller receives ETH

## Technologies Used

* Solidity
* Ethereum
* Remix IDE

## Author

Vedant Banke
Aspiring Web3 / Solidity Developer
