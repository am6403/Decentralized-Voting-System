# Decentralized-Voting-System

The "Decentralized Voting System" is a smart contract-based application built on the Ethereum blockchain, aiming to provide a transparent and secure platform for conducting electronic voting. Unlike traditional voting systems that rely on centralized authorities, a decentralized voting system utilizes the Ethereum blockchain's decentralized and immutable nature to ensure the integrity of the voting process. It is designed to ensure the fairness and accuracy of the voting process while promoting trust among participants.


Steps:-

1)Add Candidates: The contract owner adds candidates by calling the addCandidate function and providing the Ethereum addresses and names of the candidates (e.g., "Candidate 1" and "Candidate 2").

2)Start Voting: The owner initiates the voting process by calling the startStopVoting function with true as the argument, indicating the start of the voting period.

3)Voter Registration and Voting: Voters register by providing their Ethereum addresses (e.g., voter1 and voter2).
Each voter casts their vote by calling the addVote function, specifying the candidate's address they want to vote for (e.g., voter1 votes for Candidate 1, and voter2 votes for Candidate 2).

4)Stop Voting: Once all votes have been cast, the owner stops the voting process by calling the startStopVoting function with false as the argument.

5)Retrieve Results:The owner can retrieve the vote counts for each candidate using the getCandidateVoteCount function.
The owner can also check the selected candidate for each voter using the getVote function.

6)Optional: Remove Vote: A voter can choose to remove their vote by calling the removeVote function. This action will decrement the vote count for the selected candidate.

# Pictures


![code 1](https://github.com/am6403/Decentralized-Voting-System/assets/103773302/a284ca46-572f-4c9d-aa0d-1ce192fd3780)
![code 2](https://github.com/am6403/Decentralized-Voting-System/assets/103773302/2c2b09b8-b923-429f-990d-6ac56968d5ae)
![code 3](https://github.com/am6403/Decentralized-Voting-System/assets/103773302/55781a21-746d-470e-91d8-a547d50e0f02)
![contract 1](https://github.com/am6403/Decentralized-Voting-System/assets/103773302/fd16fa46-efab-40c2-8208-4bcad4dc6490)
![contract 2](https://github.com/am6403/Decentralized-Voting-System/assets/103773302/fb5685fa-f54c-4f9f-b68d-26f950854dd8)




