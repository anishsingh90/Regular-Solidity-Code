// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract HelloWord{
    string name;

    function set(string memory userInput) public {
        name = userInput;
    }


    function get() public view returns(string memory){
        return name;
    }
}
