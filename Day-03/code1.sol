
//SPDX-Licence-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Condition{
    function check(uint a) public view returns(string memory){
        string memory value;
        if(a >= 18 && a < 30){
            value = "Adult";
        } else if(a >= 30){
            value = "More Adult";
        } else{
            value = "Not Adult";
        } 
        return value;
    }
}