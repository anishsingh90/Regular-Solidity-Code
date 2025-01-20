// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract VotingSystem{
    //define the admin to manage the contract
    address public admin;

    //create a list candidates to store candidate details
    struct CandidateList{
        uint id; //candidate ID
        string name; //candidate name
        uint votes; //number of votes received
    }

    //define the struct for voters
    struct Voter{
        bool isRegistered; //indicates if the voter is registered
        bool hasVoted; //indicates if the voter has already voted
        uint votedFor; //stores the candidate Id the voter voted for(optional)
    }
    //mapping to store voter details using their address
    mapping (address => Voter) public voters;
}