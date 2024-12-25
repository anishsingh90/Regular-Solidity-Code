//SPDX-Licence-identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract ImplicitConverstion{
    function add() public pure returns(uint){
        uint a = 10;
        uint b = 30;

        return a + b;
    }
}