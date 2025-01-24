// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserManagement {
    // Array to store user addresses
    address[] private users;
    
    // Mapping to track user existence
    mapping(address => bool) private isUser;

    // Event for adding a user
    event UserAdded(address user);

    // Event for removing a user
    event UserRemoved(address user);

    // Function to add a user
    function addUser(address _user) public {
        require(!isUser[_user], "User already exists");
        users.push(_user);
        isUser[_user] = true;
        emit UserAdded(_user);
    }

    // Function to remove a user
    function removeUser(address _user) public {
        require(isUser[_user], "User does not exist");
        
        // Find and remove the user from the array
        for (uint i = 0; i < users.length; i++) {
            if (users[i] == _user) {
                users[i] = users[users.length - 1];
                users.pop();
                break;
            }
        }
        
        isUser[_user] = false;
        emit UserRemoved(_user);
    }

    // Function to get the list of users
    function getUsers() public view returns (address[] memory) {
        return users;
    }

    // Function to check if an address is a user
    function userExists(address _user) public view returns (bool) {
        return isUser[_user];
    }
}
