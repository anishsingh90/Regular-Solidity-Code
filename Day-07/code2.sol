//SPDX-Licence-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract SolidityTest{
    function getResult(uint x) public pure returns(uint){
        uint doubleValue = x * 2;
        return doubleValue;
    }
}