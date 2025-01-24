// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityTest{
    uint[] data;

    uint8 j = 0;

    function loop() public returns(uint[] memory){
        do{
            j++;
            data.push(j);
        }
        while(j < 10);
        return data;
    }
}