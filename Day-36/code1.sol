// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SolidityTest{
    string text;

    constructor() public {
        text = "Hello World";
    }
    
    function setText() public view returns(string memory){
        return text;
    }
}