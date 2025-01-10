// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

//Multiple Inheritence


contract A{ //Parent-1
     function funA() public pure virtual returns(string memory){
        return "I'm a contract A";
     }
}

contract B{  //Parent-2
     function funB() public pure virtual returns(string memory){
        return "I'm a contract B";
     }
}

contract C is A, B{ //Child of Parent-1 and Parent-2
     function funA() public pure override returns(string memory){
        return "I'm a contract C not A";
     }

     function funB() public pure override returns(string memory){
        return "I'm a contract C not B";
     }
}