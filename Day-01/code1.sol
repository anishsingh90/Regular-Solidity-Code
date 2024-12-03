//SPDX-License-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityTest{
   constructor() public {

   }

   function getResult() public view returns(uint){
      uint a = 1;
      uint b = 7;
      uint c = a + b;
      return c;
   } 
}