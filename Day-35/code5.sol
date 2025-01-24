// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityTest{
    uint i = 10;

    function decison() public returns(bool){
        if(i < 10){
            return true;
        }else{
            return false;
        }
    }
}