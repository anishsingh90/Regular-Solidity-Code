// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Counter{
    uint public counter;
    
    constructor(uint _counter){
        counter = _counter;
    }
}