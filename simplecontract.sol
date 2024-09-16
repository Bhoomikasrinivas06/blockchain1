// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleContract2 {
    uint public z;  // Make z public to easily check its value

    // Function to add 5 to the input value
    function addition(uint x) public returns (uint y) {
        z = x + 5;
        y = z;
    }

    // Function to subtract 5 from the input value
    function difference(uint x) public returns (uint y) {
        z = x - 5;
        y = z;
    }

    // Function to divide the input value by 5
    function division(uint x) public returns (uint y) {
        require(x >= 5, "Input must be greater than or equal to 5 to avoid division by zero");  // Safeguard
        z = x / 5;
        y = z;
    }

    // Read-only function to get the current value of z
    function currValue() public view returns (uint) {
        return z;
    }
}
