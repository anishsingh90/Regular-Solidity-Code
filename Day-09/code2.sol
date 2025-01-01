//SPDX-Licence-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract SolidityTest{
    string text;

    function setText() public {
        text = "Anish";
    }
    function setTextByPassingValue(string memory message) public {
        text = message;
    }

    function getString() public view returns(string memory){
        return text;
    }
}
