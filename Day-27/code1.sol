// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Solidity{
    uint var1;
    uint var2;
    uint sum;

    function set(uint x, uint y) public {
        var1 = x;
        var2 = y;

        sum = var1 + var2;
    }

    function get() public view returns(uint){
        return sum;
    }
}