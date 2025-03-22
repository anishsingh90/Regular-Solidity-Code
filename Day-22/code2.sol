// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

abstract contract AbstractContract{
    function getStr(string memory _strIn) public view virtual returns(string memory);
}

contract DerivedContract is AbstractContract{
    function getStr(string memory _strIn) public pure override returns(string memory){
        return _strIn;
    }
} 