// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

library Math{
    function max(uint x, uint y) internal pure returns(uint){
        return x >= y ? x : y;
    }
}

contract Test{
    function max(uint x, uint y) internal pure returns(uint){
        return Math.max(x, y);
    }
}