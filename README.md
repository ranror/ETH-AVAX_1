# ErrorsType Contract

## Description
This Solidity smart contract demonstrates various error handling mechanisms such as `require`, `revert`, and `assert`.

## SPDX-License-Identifier
GPL-3.0

## Prerequisites
- Solidity compiler version: >=0.7.0 <0.9.0

## Usage
The `names` function takes a string `name` as input and performs different error checks:
- It uses `require` to ensure that the length of the `name` is greater than 5 characters. If not, it throws an error with the message "Name must be greater than 5 characters".
- It uses `revert` to check if the length of the `name` is greater than 10 characters. If so, it reverts the transaction with the message "Name is too long".
- It uses `assert` to verify that the length of the `name` is less than or equal to 10 characters.

## Function
```solidity
function names(string memory name) public pure returns (string memory)

ErrorsType contractInstance = new ErrorsType();
string memory result = contractInstance.names("John Doe");

In this example, the names function is called with the name "John Doe". Since the length of "John Doe" is greater than 5 characters but less than or equal to 10 characters, the function will execute successfully and return "John Doe".

```solidity
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


