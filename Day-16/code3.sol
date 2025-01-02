//SPDX-Licence-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityPure{
    function getValue() public pure returns(uint product, uint sum){
        uint num1 = 10;
        uint num2 = 2;
        product = num1 * num2;
        sum = num1 + num2;
    }
}