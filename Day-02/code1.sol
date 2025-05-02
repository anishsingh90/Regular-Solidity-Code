//SPDX-License-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

contract SolidityTest{
    uint public data = 30;
    uint internal idata = 10;
 
    function x() public returns(uint){
        data = 3; //internal access
        return data;
    }
} 
