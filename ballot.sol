pragma solidity ^0.4.0;

contract Ballot {
    struct Voter {
        uint weight;
        bool voted;
        uint8 vote;
        address delegate;
    }

    struct Proposal {
        uint voteCount;
    }

    address chairperson;
    mapping(address => Voter) voters;
    Proposal[] proposals;

    // create a new ballot with $(_numProposals) different proposals.
    function Ballot(uint8 _numProposals) {
        chairperson = msg.sender;
        voters[chairperson].weight = 1;
        proposals.length = _numProposals;
    }

    // give $(voter) the right to vote on this ballot.
    // may only be called by $(chairperson).
    function giveRightToVote(address voter) {
        if(msg.sender != chairperson || voters[voter].voted) return;
        voters[voter].weight = 1;
    }
}
