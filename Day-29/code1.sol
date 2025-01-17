// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SimpleStorage{
    uint Value;

    function setter(uint _value) public{
        Value = _value;
    }

    function getter() public view returns(uint){
        return Value;
    }
}