// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

library LibExample{
    function pow(uint a, uint b) public view returns(uint, address){
        return (a ** b, address(this));
    }
}

contract LibraryExample{
    using LibExample for uint;
    address owner = address(this);

    function getPow(uint num1, uint num2) public view returns(uint, address){
        return num1.pow(num2);
    }
}