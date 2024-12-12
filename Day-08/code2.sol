//SPDX-Licence-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract Do_while{
    uint[] data;

    uint8 j = 0;

    function get() public returns(uint[] memory){
        do{
            j++;
            data.push(j);
        }while(j<10);
        return data;
    }
}