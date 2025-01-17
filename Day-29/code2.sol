// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SetString{
    string value;

    function set(string memory _value) public {
        value = _value;
    }

    function get() public view returns(string memory){
        return value;
    }
}