//SPDX-Licence-Identifier: GPL-3.0

// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract Continue_stmnt{
    uint[] data;

    uint i = 0;

    function get() public returns(uint[] memory){
        while(i < 10){
            i++;
            if(i == 5){
                break;
            }
            data.push(i);
        }
        return data;
    }
}