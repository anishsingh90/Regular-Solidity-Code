//SPDX-Licence-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityView{
    uint num1 = 10;
    uint num2 = 2;

    function getValue() public view returns(uint product, uint sum){
        product = num1 * num2;
        sum = num1 + num2;
    }
}
