// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBank {
    // Mapping to store user balances
    mapping(address => uint256) private balances;

    // Events for deposit and withdrawal
    event Deposit(address indexed user, uint256 amount);
    event Withdrawal(address indexed user, uint256 amount);

    // Constructor (optional)
    constructor() {}

    // Deposit function
    function deposit() external payable {
        // Check if sent ether is greater than 0
        require(msg.value > 0, "Deposit amount must be greater than 0");

        // Add msg.value to the user's balance
        balances[msg.sender] += msg.value;

        // Emit Deposit event
        emit Deposit(msg.sender, msg.value);
    }

    // Withdrawal function
    function withdraw(uint256 amount) external {
        require(amount > 0, "Withdrawal amount must be greater than zero");
        require(balances[msg.sender] >= amount, "Insufficient balance");

        // Update the user's balance
        balances[msg.sender] -= amount;

        // Transfer the ether to the user
        payable(msg.sender).transfer(amount);

        // Emit Withdrawal event
        emit Withdrawal(msg.sender, amount);
    }

    // Get balance function
    function getBalance() external view returns (uint256) {
        return balances[msg.sender]; // Return the balance of the caller
    }
}
