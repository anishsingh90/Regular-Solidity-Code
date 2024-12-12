//SPDX-Licence-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract SolidityTest{
    uint i = 10;

    function get() public returns(bool){
        if(i % 2 == 0){
            return true;
        }
    }
}