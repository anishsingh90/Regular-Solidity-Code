//SPDX-Licence-Identifier: GPL-3.0

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityArray{
    string text;

    function get() public returns(string memory){
        text = "Anish Singh";
        return text;
    }
}