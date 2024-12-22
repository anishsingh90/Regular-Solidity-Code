// SPDX-License-Identifier: GPL-3.0 
pragma solidity >=0.4.22 <0.9.0; 
/// @title A contract for demonstrate return statements
/// @author Jitendra Kumar
/// @notice For now, this contract just show how to return a value from the function
contract Test {
	// Defining a public pure function to
	// demonstrate return statement
	function return_example() public pure returns(uint, uint, uint, string memory){
	uint num1 = 10; 
	uint num2 = 16;
	uint sum = num1 + num2; 
	uint prod = num1 * num2;
	uint diff = num2 - num1;
	string memory message = "Multiple return values";
	return (sum, prod, diff, message); 
}
}
