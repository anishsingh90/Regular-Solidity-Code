//SPDX-Licence-Identifier: GPL-3.0

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityTest{
	//create the enumurator
	enum Student_Info{
		Name,
		Course,
		Department
	}

	Student_Info Info;
	Student_Info Unq_Info;

	Student_Info constant default_value = Student_Info.Name;

	function set_value() public {
		Unq_Info = Student_Info.Course;
	}

	function get_Inq() public view returns(Student_Info){
		return Unq_Info;
	}

	function get_value() public view returns(Student_Info){
		return default_value;
	}
}