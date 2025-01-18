//SPDX-License-Indentifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract A{
    function fun1() public pure returns(string memory){
        return "I am contract A";
    }

    function fun2() public pure virtual returns(string memory){
        return "I am contract A";
    }

    function fun3() public pure returns(string memory){
        return "I am contract A";
    }
}
 
contract B is A{
    function fun2() public pure override returns(string memory){
        return "I am contract B";
    }
}