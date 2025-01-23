// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SolidityTest{
    uint[] data;

    uint8 j = 0;
    
    function Loop() public returns(uint[] memory){
        while(j < 5){
            j++;
            data.push(j);
        }
        return data;
    }
}