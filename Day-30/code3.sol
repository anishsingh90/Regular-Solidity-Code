// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherVault{
    //to store the balance
    mapping (address => uint) private balances;

    //event for deposit
    event Deposit(address indexed user, uint256 amount);

    //event for withdraw
    event Withdrawal(address indexed user, uint256 amount);

    //function for deposit value
    function deposit() external payable {
        //validate: ensure ether sent is greater than 0
        require(msg.value > 0, "Deposit amount is greater than 0 ether");

        //update: add the ether to the sender's balance
        balances[msg.sender] += msg.value;

        //emit: log the deposit event
        emit Deposit(msg.sender, msg.value);
    }

    //function for withdraw value
    function withdraw(uint256 amount) external{
        //Validate: Ensure the user's balance is sufficient
        require(balances[msg.sender] >= amount, "Insufficient balance");

        //Update: Deduct the amount from the user's balance
        balances[msg.sender] -= amount;

        //Transfer: Send the amount to the user
        (bool sucess, ) = msg.sender.call{value: amount}("");
        require(sucess, "Transfer failed");

        //Emit: Log the Withdrawal event
        emit Withdrawal(msg.sender, amount);
    }

    //function to get the balance of the caller
    function getBalance() external view returns(uint256){
        return balances[msg.sender];
    }
}