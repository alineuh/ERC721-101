# ERC721-101
TD6 blockchain programming 
The TD has two components:

An ERC20 token, ticker TD-ERC721-101, that is used to keep track of points
An evaluator contract, that is able to mint and distribute TD-ERC721-101 points
Your objective is to gather as many TD-ERC721-101 points as possible. Please note :

The 'transfer' function of TD-ERC721-101 has been disabled to encourage you to finish the TD with only one address
You can answer the various questions of this workshop with different ERC721 contracts. However, an evaluated address has only one evaluated ERC721 contract at a time. To change the evaluated ERC721 contract associated with your address, call submitExercice() with that specific address.
In order to receive points, you will have to do execute code in Evaluator.sol such that the function TDERC20.distributeTokens(msg.sender, n); is triggered, and distributes n points.
This repo contains an interface IExerciceSolution.sol. Your ERC721 contract will have to conform to this interface in order to validate the exercice; that is, your contract needs to implement all the functions described in IExerciceSolution.sol.
A high level description of what is expected for each exercice is in this readme. A low level description of what is expected can be inferred by reading the code in Evaluator.sol.
The Evaluator contract sometimes needs to make payments to buy your tokens. Make sure he has enough ETH to do so! If not, you can send ETH directly to the contract.
Getting to work
Clone the repo on your machine
Install the required packages npm i
Register for an infura API key
Register for an etherscan API key
Create a .env file that contains a private key for deployment, an infura API key and an Etherscan API key.
Test that you are able to connect to the holesky network with npx hardhat console --network holesky
To deploy a contract, configure a script in the scripts folder. Look at the way the TD is deployed and try to iterate
Test your deployment locallly with npx hardhat run scripts/your-script.js
Deploy on holesky npx hardhat run scripts/your-script.js --network holesky
