//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

interface Member {
    function setName() external returns(string memory);
    function setAge() external returns(uint);
}

contract Techer is Member{
    function setName() public pure returns(string memory){
        return "Anish";
    } 

    //implement the requiered 'setAge()' here
    function setAge() public pure returns(uint){
        return 20;
    }
}