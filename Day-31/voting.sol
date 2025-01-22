// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingSystem{
    //Struct to store the detail of Candidate
    struct Candidate{
        uint id; //unique id for the candidate
        string name; //candidate name
        uint voteCount; //number of votes receive
    }

    //Struct to store the detail of Voter
    struct Voter{
        bool isRegistered; //wether the voter is registred
        bool hasVoted; //wether the voter has already voted
        uint selectedCandidate; //id for the candidate the voter voted for
    }

    //variables
    address public owner; //address of the contract owner
    uint public totalCandidates; //total number of candidates
    uint public totalVoters; //total number of registred voters

    //mapping for candidate and voters
    mapping (uint => Candidate) public candidates;
    mapping (address => Voter) public voters;

    //Modifier to restrict access to the owner
    modifier onlyOwner(){
        require(msg.sender == owner, "Only the owner can perform this action");
        _;
    }

    //Constructor to initialize the owner
    constructor() {
        owner = msg.sender;
    }

    //function to register a candidate (only owner can call this)
    function registerCandidate(uint _id, string memory _name) public onlyOwner{
        require(candidates[_id].id == 0, "Candidate Id already exists");
        candidates[_id] = Candidate(_id, _name, 0);
        totalCandidates++;
    }

    //function to register a voter
    function registerVoter(address _voterAddress) public onlyOwner{
        require(!voters[_voterAddress].isRegistered, "Voter is already registred");
        voters[_voterAddress] = Voter(true, false, 0);
        totalVoters++;
    }

    //function to cast a vote
    function vote(uint _candidateId) public {
        require(voters[msg.sender].isRegistered, "You must be a registred voter to vote");
        require(!voters[msg.sender].hasVoted, "You have already voted");
        require(candidates[_candidateId].id != 0, "Invalid candidate ID");

        voters[msg.sender].hasVoted = true;
        voters[msg.sender].selectedCandidate = _candidateId;
        candidates[_candidateId].voteCount++;
    }

    // Function to fetch candidate details
    function getCandidate(uint _id) public view returns (uint, string memory, uint) {
        require(candidates[_id].id != 0, "Candidate does not exist");
        Candidate memory candidate = candidates[_id];
        return (candidate.id, candidate.name, candidate.voteCount);
    }

    // Function to get total votes for a candidate
    function getTotalVotes(uint _candidateId) public view returns (uint) {
        require(candidates[_candidateId].id != 0, "Candidate does not exist");
        return candidates[_candidateId].voteCount;
    }

    // Function to get the winner (optional)
    function getWinner() public view returns (uint, string memory, uint) {
        uint maxVotes = 0;
        uint winnerId = 0;
        string memory winnerName;

        for (uint i = 1; i <= totalCandidates; i++) {
            if (candidates[i].voteCount > maxVotes) {
                maxVotes = candidates[i].voteCount;
                winnerId = i;
                winnerName = candidates[i].name;
            }
        }

        require(winnerId != 0, "No votes have been cast yet");
        return (winnerId, winnerName, maxVotes);
    }

}