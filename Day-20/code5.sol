// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract A{
    function fun1() public pure virtual returns(string memory){
        return "This is contract A";
    }
}

contract B is A{
    function fun1() public pure override returns(string memory){
        return "This is contract B";
    }
}