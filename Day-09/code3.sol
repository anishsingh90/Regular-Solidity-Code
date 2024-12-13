//SPDX-Licence-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract SolidityTest{
    function get(string memory name) public view returns(uint){
        bytes memory naming = bytes(name);
        return naming.length;
    }
}