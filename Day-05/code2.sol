// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; //^0.8.0  :- 0.8.0 to 0.8.9

contract Test{
    uint a;

    function set(uint x) public {
        a = x;
    }

    function get() public view returns(uint){
        return a;
    }
}