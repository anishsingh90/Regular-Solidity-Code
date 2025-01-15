//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

//abstract contract in Solidity
abstract contract Animal{
    function makeSound() public pure virtual returns(string memory);
}


contract Dog is Animal{
    function makeSound() public pure override returns(string memory){
        string memory str = "Bhao-Bhao";
        return str;
    }
}