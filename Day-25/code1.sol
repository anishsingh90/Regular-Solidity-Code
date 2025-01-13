//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

//Inheritance in Solidity
contract A{
    function fun1() public pure returns(string memory){
        return "This is a Contract A";
    }

    function fun2() public pure virtual returns(string memory){
        return "This is a Contract A";
    }

    function fun3() public pure virtual returns(string memory){
        return "This is a Contract A";
    }
}

contract B is A{
    function fun2() public pure override returns(string memory){
        return "This is Contract B";
    }

    function fun3() public pure override virtual returns(string memory){
        return "This is Contract B";
    }
}

contract C is B{
    function fun3() public pure override returns(string memory){
        return "This is Contract C";
    }
}