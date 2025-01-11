// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Passing Parameter To Parent Constructor In Multiple Inheritance 

contract A{
    string public name;
    uint public age;

    constructor(string memory _name, uint _age){
        name = _name;
        age = _age;
    }
}

contract B{
    string public add;
    uint public salary;

    constructor(string memory _add, uint _salary){
        add = _add;
        salary = _salary;
    }
}

//Order of execution
//1. A, 2. B, 3. C
contract C is A("Anish", 20),B("Delhi", 100000){

}

//Order of execution
//1. A, 2. B, 3. D
contract D is B,A{
    constructor() A("Anish", 20)B("Delhi", 100000){

    } 
}


contract E is A,B{
    constructor(string memory _name, uint _age,string memory _add, uint _salary)A(_name, _age)B(_add, _salary){

    }
}

contract F is A("Anish", 20),B{
    constructor(string memory _add, uint _salary)B("Delhi", 100000){

    }
}