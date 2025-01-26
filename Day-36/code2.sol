// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Array{
    uint[4] public arr = [1, 2, 3, 4];

    function setter(uint index, uint value) public {
        arr[index] = value;
    }
}