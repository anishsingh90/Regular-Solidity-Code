//SPDX-Licence-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SolidityTest{
    string public calledFallbackFun;
    fallback() external payable {
        calledFallbackFun = "Fallback function is executed";
     }

     function getBalance() public view returns(uint){
        return address(this).balance;
     }
}


contract Sender{
    function transferEther() public payable {
        (bool sent, ) = payable(0x5d5107BDa101F69c371993820478612672A5389e).call{value: 2 ether}("Transaction Completed!");
        require(sent, "Transaction Failed");
    }

    function getBalance() public view returns(uint){
        return address(this).balance;
    }
}

