// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract A{
    string public str;

    constructor(){
        str = "This is a String A";
    }

    function getResult() public view virtual returns(string memory){
        return str;
    }
}

contract B is A{
    function getResult() public view override returns(string memory){
        return "This is a String B";
    }
}