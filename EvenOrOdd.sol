// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "@openzeppelin/contracts/utils/Strings.sol";

contract ParOuImpar {
  enum Choice {
    UNPLAYED,
    IMPAR,
    PAR
  }

  Choice public choice;

  string public textChoice = ""; //EVEN or ODD

  function compare(
    string memory strA,
    string memory strB
  ) private pure returns (bool) {
    bytes memory arrA = bytes(strA);
    bytes memory arrB = bytes(strB);
    return arrA.length == arrB.length && keccak256(arrA) == keccak256(arrB);
  }

  function choose(string memory newChoice) public {
    require(
      compare(newChoice, "EVEN") || compare(newChoice, "ODD"),
      "Choose EVEN or ODD"
    );

    if (compare(newChoice, "EVEN")) {
      choice = Choice.PAR;
      textChoice = "EVEN";
    } else {
      choice = Choice.IMPAR;
      textChoice = "ODD";
    }
  }

  function random() private view returns (uint8) {
    return uint8(uint256(keccak256(abi.encodePacked(block.timestamp, choice))));
  }

  function play(uint8 number) public view returns (string memory) {
    require(number >= 0 && number <= 2, "Play 0, 1 or 2");
    require(
      choice != Choice.UNPLAYED,
      "First, choose your option (EVEN or ODD)"
    );

    uint8 cpuNumber = random();
    bool isEven = ((number + cpuNumber) % 2) == 0;

    if (isEven && choice == Choice.PAR)
      return
        string.concat(
          "PLAYER WIN!!! ",
          "Player choose",
          textChoice,
          " and plays ",
          Strings.toString(number),
          ". CPU plays ",
          Strings.toString(cpuNumber)
        );
    else if (!isEven && choice == Choice.IMPAR)
      return
        string.concat(
          "PLAYER WIN!!! ",
          "Player choose ",
          textChoice,
          " and plays ",
          Strings.toString(number),
          ". CPU plays ",
          Strings.toString(cpuNumber)
        );
    else
      return
        string.concat(
          "CPU WIN!!! ",
          "Player choose ",
          textChoice,
          " and plays ",
          Strings.toString(number),
          ". CPU plays ",
          Strings.toString(cpuNumber)
        );
  }
}
