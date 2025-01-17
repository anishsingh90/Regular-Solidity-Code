// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBank {
    // State variable to track account balances
    mapping(address => uint) public balances;

    // Event to log deposits and withdrawals
    event Deposited(address indexed accountHolder, uint amount);
    event Withdrawn(address indexed accountHolder, uint amount);

    // Deposit function to allow users to deposit Ether
    function deposit() public payable {
        require(msg.value > 0, "You must send some Ether.");
        balances[msg.sender] += msg.value;
        emit Deposited(msg.sender, msg.value);
    }

    // Withdraw function to allow users to withdraw Ether
    function withdraw(uint amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance.");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
        emit Withdrawn(msg.sender, amount);
    }

    // Constructor
    constructor() {}
}
