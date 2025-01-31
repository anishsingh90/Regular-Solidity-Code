// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract HelloWorld{
    string message;

    constructor() public {
        message = "Hello World!";
    }
 
    function get() public view returns(string memory){
        return message;
    }
}