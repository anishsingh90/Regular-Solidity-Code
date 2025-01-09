// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityTest{
    string str;

    constructor(string memory str_in){
        str = str_in;
    }

    
    function str_out() public view returns(string memory){
        return str;
    }
}