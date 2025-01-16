// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityTest{
    string value;

    function set(string memory finalValue) public {
        value = finalValue;
    }

    function get() public view returns(string memory){
        return value;
    }
}