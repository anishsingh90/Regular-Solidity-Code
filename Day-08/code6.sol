//SPDX-Licence-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityCheck{
    uint i = 10;
    string public result;

    function get() public returns(string memory){
        if(i % 2 == 0){
            result = "Even Number";
        } else if(i % 2 != 0){
            result = "Odd Number";
        } else{
            result = "Not Even";
        }
        return result;
    }
}