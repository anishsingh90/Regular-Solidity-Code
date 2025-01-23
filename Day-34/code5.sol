// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract SafeMathExample {
    // Use SafeMath for uint256 operations
    using SafeMath for uint256;

    // A simple state variable to store a number
    uint256 public total;

    // Constructor to initialize the total value
    constructor() {
        total = 0;
    }

    // Function to add a value to the total
    function add(uint256 value) external {
        // Prevent overflow using SafeMath
        total = total.add(value);
    }

    // Function to subtract a value from the total
    function subtract(uint256 value) external {
        // Prevent underflow using SafeMath
        total = total.sub(value);
    }

    // Function to multiply the total by a value
    function multiply(uint256 value) external {
        total = total.mul(value);
    }

    // Function to divide the total by a value
    function divide(uint256 value) external {
        require(value > 0, "Cannot divide by zero");
        total = total.div(value);
    }
}