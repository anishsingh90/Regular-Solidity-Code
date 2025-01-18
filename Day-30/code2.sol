// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBank{
    //mapping to store the user balance
    mapping (address => uint) private balances;

    //events for deposit and withdrawal
    event Deposit(address indexed user, uint256 amount);
    event Withdrawal(address indexed user, uint256 amount);

    constructor() {}

    function deposit() external payable {
        require(msg.value > 0, "Deposit value must be greater than 0");

        balances[msg.sender] += msg.value; 

        emit Deposit(msg.sender, msg.value);
    }

    function withdraw(uint256 amount) external{
        require(amount > 0, "Withdraw value must be greater than 0");
        require(balances[msg.sender] >= amount, "Insuficient balance");

        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
        emit Withdrawal(msg.sender, amount);
    }

    function getBalance() external view returns(uint256){
        return balances[msg.sender];
    }
}