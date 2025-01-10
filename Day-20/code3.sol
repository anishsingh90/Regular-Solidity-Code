// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

//Heirarical Inheritance

contract A{ //Parent
    function fun1() public pure virtual returns(string memory){
        return "I'm a contract A";
    }

    function fun2() public pure virtual returns(string memory){
        return "I'm a contract A";
    }
}

contract B is A{ //Child-1
    function fun1() public pure override returns(string memory){
        return "I'm a contract B";
    }
}

contract C is A{ //Child-2
    function fun2() public pure override returns(string memory){
        return "I'm a contract C";
    }
}