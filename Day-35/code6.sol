// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityTest{
    uint i = 10;

    function get() public view returns(string memory){
        if(i < 10){
            return "Smaller than 10";
        }else if(i == 10){
            return "Equal to 10";
        }else{
            return "Greater than 10";
        }
    } 
}