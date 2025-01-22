// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityTest{
    string public message;

    function set(string memory value) public {
        message = value;
    }
}