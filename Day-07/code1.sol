//SPDX-Licence-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract State_var{
    address public a;
    constructor() public {
        a = msg.sender;
    } 
}
