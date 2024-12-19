pragma solidity ^0.4.18; 

contract mapping_example {
	 
	struct student {

		string name;
		string subject;
		uint8 marks;
	}

	mapping (address => student) result;
	address[] public student_result;
	
	
	function adding_values() public {
		var student = result[0xDEE7796E89C82C36BAdd1375076f39D69FafE252];

		student.name = "Anish Singh";
		student.subject = "Operating System";
		student.marks = 45; //out of 100
		student_result.push(
		0xDEE7796E89C82C36BAdd1375076f39D69FafE252) -1;

	}
	
}
