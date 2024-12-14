//SPDX-Licence-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract SolidityTest{
    function getLength(string memory s) public view returns(uint){
        bytes memory b = bytes(s);
        return b.length;
    } 
}