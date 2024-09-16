// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PatentIdea {
    mapping(bytes32 => bool) private hashes;
    bool alreadyStored;
    
    // Event emitted when a hash is created/stored
    event ideahashed(bool success);
    
    // Function to store the hash privately
    function saveHash(bytes32 hash) private {
        hashes[hash] = true;
    }
    
    // Public function to save an idea's hash and emit an event
    function SaveIdeaHash(string memory idea) public returns (bool) {
        bytes32 hashedIdea = HashtheIdea(idea);
        if (alreadyHashed(hashedIdea)) {
            alreadyStored = true;
            emit ideahashed(false);
            return alreadyStored;
        }
        saveHash(hashedIdea);
        emit ideahashed(true);
        return true;
    }
    
    // Private function to check if the idea has already been hashed
    function alreadyHashed(bytes32 hash) private view returns (bool) {
        return hashes[hash];
    }
    
    // Public function to check if a given idea is already hashed
    function isAlreadyHashed(string memory idea) public view returns (bool) {
        bytes32 hashedIdea = HashtheIdea(idea);
        return alreadyHashed(hashedIdea);
    }
    
    // Private function to hash an idea using keccak256 (previously sha3)
    function HashtheIdea(string memory idea) private pure returns (bytes32) {
        return keccak256(abi.encodePacked(idea));
    }
}
