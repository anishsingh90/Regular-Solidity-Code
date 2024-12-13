//SPDX-Licence-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract SolidityTest{
    string name;

    constructor() public {
        name = "Anish Singh";
    }

    function get() public view returns(string memory){
        return name;
    }
}