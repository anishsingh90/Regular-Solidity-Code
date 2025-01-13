// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Solidity{
    string userInput;

    function set(string memory finalvalue) public {
        userInput = finalvalue;
    }

    function get() public view returns(string memory){
        return userInput;
    }
}