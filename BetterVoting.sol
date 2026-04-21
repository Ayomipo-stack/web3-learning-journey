pragma solidity ^0.8.0;

contract BetterVoting {

    uint aliceVotes = 0;
    uint bobVotes = 0;

    mapping(address => bool) hasVoted;

    function voteAlice() public {

        require(hasVoted[msg.sender] == false);

        aliceVotes = aliceVotes + 1;

        hasVoted[msg.sender] = true;
    }

    function voteBob() public {

        require(hasVoted[msg.sender] == false);

        bobVotes = bobVotes + 1;

        hasVoted[msg.sender] = true;
    }

    function getAliceVotes() public view returns(uint){
        return aliceVotes;
    }

    function getBobVotes() public view returns(uint){
        return bobVotes;
    }
}
