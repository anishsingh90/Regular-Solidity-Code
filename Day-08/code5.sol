//SPDX-Licence-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract ElseContions{
    uint i = 10;
    bool even;

    function get() public returns(bool){
        if(i % 2 == 0){
            even = true;
        }else{
            even = false;
        }
        return even; 
    }
}