// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityTest{
    function sqr(uint _num) public pure returns(uint){
        _num = _num ** 2;
        return _num;
    }

    function getResult() public pure returns(uint){
        uint num1 = 5;
        uint num2 = 5;
        uint sum = num1 + num2;

        return sqr(sum);
    }
}