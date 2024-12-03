//State variable

//SPDX-License-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityTest{
    uint storedData;

    constructor() public {
        storedData = 10;
    }

    function getResult() public view returns(uint){
        return storedData;
    }
}