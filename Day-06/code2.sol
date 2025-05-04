//SPDX-Licence-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract SolidityTest{
    bool public boolean = false;

    int32 public int_var = 45;


    string public str = "Geeks For Geeks";

    bytes1 public b = "a"; 

    enum my_enum{geeks_, _for, geeks}

    function Enum() public pure returns(my_enum){
        return my_enum.geeks;
    }
}
