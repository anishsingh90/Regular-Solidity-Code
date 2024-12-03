//Local Variable

//SPDX-Licence-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityTest{
    function Result() public view returns(uint){
        uint a = 2; //local variable
        uint b = 6;
        uint result = a + b;

        return result; //access the local variable
    }
}