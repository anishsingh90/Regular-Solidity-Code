// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityLoop{
    uint[] data;

    function Loop() public returns(uint[] memory){
        for(uint i; i<5; i++){
            data.push(i);
        }
        return data;
    }
}