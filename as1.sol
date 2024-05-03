// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ErrorsType {
    function names(string memory name) public pure returns (string memory) {
        // Example usage of require
        require(bytes(name).length > 5, "Name must be greater than 5 characters");
        
        // Example usage of revert
        if (bytes(name).length > 10) {
            revert("Name is too long");
        }
        // Example usage of assert
        assert(bytes(name).length <= 10);
        
        

        return name;
    }
}
