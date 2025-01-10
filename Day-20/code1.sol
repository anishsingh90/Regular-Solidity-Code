// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract A{
    function fun1() public pure returns(string memory){
        return "I'm contract A";
    }
    function fun2() public pure returns(string memory){
        return "I'm contract A";
    }
    function fun3() public pure virtual returns(string memory){
        return "I'm contract A";
    }
    function fun4() public pure virtual returns(string memory){
        return "I'm contract A";
    }
}


contract B is A{
    function fun3() public pure override returns(string memory){
        return "I'm contract B";
    }
    function fun4() public pure override returns(string memory){
        return "I'm contract B";
    }
}