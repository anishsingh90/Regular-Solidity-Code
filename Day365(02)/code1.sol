//SPDX-Licence-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityTest{
    uint public a;
    uint public b;
    uint public sum;

    constructor() public  {
        a = 3;
        b = 9;
        sum = a + b;
    }
}