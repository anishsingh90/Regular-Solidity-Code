 //SPDX-Licence-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract State_var{
    uint public num = 0;
  
    function increase() public{
        num += 1;
    }
}