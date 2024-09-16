// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Addition.sol"; // Importing the library if it is in a separate file

contract UseAddition {
    using Addition for uint;

    function addTwoNumbers(uint a, uint b) public pure returns (uint) {
        return Addition.Add(a, b);
    }
}
