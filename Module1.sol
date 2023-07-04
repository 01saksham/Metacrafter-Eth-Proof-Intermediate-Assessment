// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Vote {
    uint public totalVotes;
    mapping(address => bool) public hasVoted;

    function castVote() public {
        require(!hasVoted[msg.sender], "Already voted"); // Check if the sender has already voted

        totalVotes++;
        hasVoted[msg.sender] = true;

        if (totalVotes > 10) {
            revert("Voting limit exceeded"); // Revert the transaction if the voting limit is exceeded
        }

        assert(totalVotes <= 10); // Ensure that the total votes does not exceed the limit
    }
}
