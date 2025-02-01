// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SolidityTest{
    uint[] data;

    uint8 j;
 
    function loop() public returns(uint[] memory){
        while(j < 15){
            j++;
            data.push(j);
        }
        return data;
    }
}