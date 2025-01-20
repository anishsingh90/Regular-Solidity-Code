// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBank{
    //mapping for store the user balances
    mapping (address => uint256) private balances;

    //event for deposit amount
    event Deposit(address indexed user, uint256 amount); 

    //event for withdraw
    event Withdrwal(address indexed user, uint256 amount);

    //constructor
    constructor(){}

    //function for deposit
    function deposit() external payable {
        //check if sent ether is greater than zero
        require(msg.value > 0, "Deposit amount must be greater than zero");

        //add msg.value to the user balance
        balances[msg.sender] += msg.value;

        //emit deposit event
        emit Deposit(msg.sender, msg.value);
    }

    //function for withdraw
    function withdraw(uint256 amount) external {
        //check if withdraw is greater than zero
        require(amount > 0, "Withdrwal amount must be greter than zero");

        //update the users balances
        balances[msg.sender] -= amount;

        //transfer the ether to the user
        payable(msg.sender).transfer(amount);

        //emit withdraw event
        emit Withdrwal(msg.sender, amount);
    }

    //check balance
    function getBalance() external view returns(uint256){
        return balances[msg.sender];
    }
}