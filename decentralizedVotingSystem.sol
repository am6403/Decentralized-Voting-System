// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract Voting {

    bool public isVoting;

    struct Candidate {
        string name;
        uint256 voteCount;
    }

    struct Voter {
        bool hasVoted;
        address selectedCandidate;
    }

    mapping(address=>Voter) public voters;
    mapping(address=>Candidate) public candidates;

    event AddVote(address indexed voter, address receiver, uint256 timestamp);
    event RemoveVote(address receiver);
    event StartStopVoting(address indexed actor, bool isStart);
    event AddCandidate(address indexed owner, address candidate, string name);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function startStopVoting(bool start) external onlyOwner {
        require(isVoting != start, "Voting state unchanged");
        isVoting = start;
        emit StartStopVoting(msg.sender, start);
    }

    function addVote(address receiver) external {
        require(isVoting, "Voting has not started");
        require(!voters[msg.sender].hasVoted, "Already voted");
        voters[msg.sender] = Voter(true, receiver);
        candidates[receiver].voteCount++;
        emit AddVote(msg.sender, receiver, block.timestamp);
    }

    function removeVote() external {
        Voter storage voter = voters[msg.sender];
        require(voter.hasVoted, "Not voted yet");
        candidates[voter.selectedCandidate].voteCount--;
        delete voters[msg.sender];
        emit RemoveVote(voter.selectedCandidate);
    }

    function addCandidate(address candidate, string memory name) external onlyOwner {
        require(!isVoting, "Cannot add candidate while voting is in progress");
        candidates[candidate] = Candidate(name, 0);
        emit AddCandidate(msg.sender, candidate, name);
    }

    function getCandidateVoteCount(address candidate) external view returns (uint256) {
        return candidates[candidate].voteCount;
    }

    function getVote(address voterAddress) external view returns (address) {
        return voters[voterAddress].selectedCandidate;
    }
}
