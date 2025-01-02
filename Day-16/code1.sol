//SPDX-Lincence-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityTest{
    function get() public pure returns(uint){
        uint num1 = 10;
        uint num2 = 20;
        uint sum = num1 + num2;

        return sum;
    }
}