// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

// Multilevel Inheritance

//Parent Contract = Father
contract A{
    function fun1() public pure returns(string memory){
        return "I'm a contract A";
    }

    function fun2() public pure returns(string memory){
        return "I'm a contract A";
    }

    function fun3() public pure virtual returns(string memory){
        return "I'm a contract A";
    }

    function fun4() public pure virtual returns(string memory){
        return "I'm a contract A";
    }
}

//Child contract = Son
contract B is A{
    function fun3() public pure override returns(string memory){
        return "I'm a contract B";
    }

    function fun4() public pure  override virtual returns(string memory){
        return "I'm a contract B";
    }
}


//Child of Child contract = Father > Son > Son
contract C is B{ 
    function fun4() public pure override returns(string memory){
        return "I'm a contract C";
    }
}