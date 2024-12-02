//SPDX-Licence-Idetifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityTest{
    string name;
    uint age;

    constructor() public {
        name = "Anish Singh";
        age = 20;
    }

    function getName() public view returns(string memory){
        return name;
    }

    function getAge() public view returns(uint){
        return age;
    }
}