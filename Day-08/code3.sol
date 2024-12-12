//SPDX-Licence-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract ForLoop{
    uint[] data;

    function get() public returns(uint[] memory){
        for(uint i=0; i<5; i++){
            data.push(i);
        }
        return data;
    }
}