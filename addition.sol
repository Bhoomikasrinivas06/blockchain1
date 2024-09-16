// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library Addition {
    // Add function marked as pure since it doesn't modify or read blockchain state
    function Add(uint x, uint y) public pure returns (uint z) {
        return x + y;
    }
}
