# EVEN or ODD Blockchain Game

> A decentralized game on a smart contract.

## Especifications

- Ethereum Blockchain SinglePlayer Game developed in Solidity

- ENVIRONMENT: Remix VM

- IDE: Remix - Ethereum IDE

- LICENSE: MIT

- GAME MODE: Player vs CPU

## Functional Requirements

- [x] The player must be able to choose between EVEN or ODD

- [x] The player must be able to choose numbers from 0 to 2

- [x] After successfully making a move, the player should be able to view information such as: "Winner", "Choice Made", "Number played by the player", "Number played by the CPU"

## Non-Functional Requirements

- [x] Must use the minimum Solidity compilation version ^0.8.12

- [x] Should use Solidity's native concat function to manipulate strings

- [x] Should use the library @openzeppelin/contracts/utils/Strings.sol for string conversion

- [x] Should use the global 'block' variable to access block information

- [x] Should use abi.encodePacked for encoding

- [x] Should use Solidity's keccak256 hashing system

## Business Rules

- [x] The game must start with no choice made

- [x] The player can only play a number if they have chosen EVEN or ODD beforehand

- [x] The player can only choose between EVEN or ODD, and the message "Choose EVEN or ODD" should be
displayed if neither option is chosen

- [x] The player can only play numbers 0, 1, or 2, and the message "Play 0, 1, or 2" should be displayed if none of these options is chosen

- [x] The CPU's move should be generated with a random value, using the block.timestamp and the player's choice

## How to test?

1. Open the Remix IDE at the link: <https://remix.ethereum.org/>

1. Create a new file inside the 'contracts/' folder with the name 'EvenOrOdd.sol'

1. Copy the contents of the 'EvenOrOdd.sol' file from this project and paste it into the 'EvenOrOdd.sol' file you just created in Remix

1. Compile using the 'Solidity Compiler' option

1. Deploy using the 'Deploy & run transactions' option

1. Expand the deploy options, make your move, and good luck!!!

Project for applying concepts covered in Luiz Tools' Web23 course."
