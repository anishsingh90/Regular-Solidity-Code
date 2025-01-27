// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DividendDistribution {
    address public owner;
    uint256 public totalShares;
    uint256 public totalDividends;
    
    mapping(address => uint256) public shares;
    mapping(address => uint256) public dividendsClaimed;
    address[] public shareholders;

    event SharesAllocated(address indexed shareholder, uint256 shares);
    event DividendDeposited(uint256 amount);
    event DividendClaimed(address indexed shareholder, uint256 amount);
    event SharesTransferred(address indexed from, address indexed to, uint256 shares);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action.");
        _;
    }

    modifier validAddress(address addr) {
        require(addr != address(0), "Invalid address.");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function allocateShares(address shareholder, uint256 amount) external onlyOwner validAddress(shareholder) {
        require(amount > 0, "Shares amount must be greater than zero.");

        if (shares[shareholder] == 0) {
            shareholders.push(shareholder);
        }

        shares[shareholder] += amount;
        totalShares += amount;

        emit SharesAllocated(shareholder, amount);
    }

    function depositDividends() external payable onlyOwner {
        require(msg.value > 0, "Deposit amount must be greater than zero.");

        totalDividends += msg.value;

        emit DividendDeposited(msg.value);
    }

    function calculateDividend(address shareholder) public view returns (uint256) {
        require(shares[shareholder] > 0, "No shares held by this address.");
        
        uint256 unclaimedDividends = (totalDividends * shares[shareholder]) / totalShares;
        return unclaimedDividends - dividendsClaimed[shareholder];
    }

    function claimDividend() external {
        uint256 dividend = calculateDividend(msg.sender);
        require(dividend > 0, "No dividends to claim.");

        dividendsClaimed[msg.sender] += dividend;
        payable(msg.sender).transfer(dividend);

        emit DividendClaimed(msg.sender, dividend);
    }

    function transferShares(address to, uint256 amount) external validAddress(to) {
        require(shares[msg.sender] >= amount, "Insufficient shares to transfer.");
        require(amount > 0, "Transfer amount must be greater than zero.");

        if (shares[to] == 0) {
            shareholders.push(to);
        }

        shares[msg.sender] -= amount;
        shares[to] += amount;

        emit SharesTransferred(msg.sender, to, amount);
    }

    function getShareholders() external view returns (address[] memory) {
        return shareholders;
    }

    function getUnclaimedDividends(address shareholder) external view returns (uint256) {
        return calculateDividend(shareholder);
    }

    function withdrawUnallocatedFunds() external onlyOwner {
        uint256 unallocatedFunds = address(this).balance - totalDividends;
        require(unallocatedFunds > 0, "No unallocated funds available.");

        payable(owner).transfer(unallocatedFunds);
    }

    function getContractBalance() external view returns (uint256) {
        return address(this).balance;
    }
}