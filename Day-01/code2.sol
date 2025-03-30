//SPDX-Licence-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityTest{
    uint storedData; //state variable

    constructor() public  {
        storedData = 10; //using state varaible
    }
    function getResult() public view returns(uint){
        return storedData;
    }
}
