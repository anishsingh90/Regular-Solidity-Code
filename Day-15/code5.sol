// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityTest{
    function getResult() public pure returns(uint, uint, uint, string memory){
        uint num1 = 5;
        uint num2 = 5;

        uint sum = num1 + num2;
        uint sub = num1 - num2;
        uint mult = num1 * num2;
        string memory message = "Multiple value returns";

        return (sum, sub, mult, message);
    }
}