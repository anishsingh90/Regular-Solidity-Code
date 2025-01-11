// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Constructor{
    string public name;
    uint public age;
    address public owner;

    constructor(string memory _name, uint _age, address _owner){
        name = _name;
        age = _age;
        owner = _owner;
    }
}