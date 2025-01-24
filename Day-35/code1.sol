// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract SolidityTest{
    //declare an array to store an owner address
    address[] public owners;

    //function to add new owner
    function addOwner(address _owner) public {
        owners.push(_owner);
    }

    //function to get the list of owner
    function getOwners() public view returns(address[] memory){
        return owners;
    }

}