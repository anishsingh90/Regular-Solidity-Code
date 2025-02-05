//SPDX-License-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

contract Addition{
    constructor() public {

    }
    function getResult() public view returns(uint){
        uint a = 1;
        uint b = 2;
        uint c = a + b;
        return c;
    }
}
