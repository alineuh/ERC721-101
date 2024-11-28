//deploying the Td somewhere
// to verify it on Etherscan
//npx hardhat verify --network holesky <address> <constructor arg 1> <constructor arg  2>

const hre = require("hardhat");

async function main(){
    //Deploying contracts
    const ExcerciceSolution = await hre.ethers.getContractFactory("ExcerciceSolution");

    const excerciceSolution = await ExcerciceSolution.deploy();
    console.log(
        `ExcerciceSolution deployed at ${excerciceSolution.address}`);

//             // Declare an animal
//     const tx = await excerciceSolution.declareAnimal(
//         26,                          // animalNumber
//         "FMLueR40gGImQKR",          // name
//         true,                       // wings
//         3,                          // legs
//         1                           // sex
//     );
//     await tx.wait();
//     console.log("Animal declared");

}

main().catch((error) => {
    console.error(error);
    ProcessingInstruction.exitCode = 1;
});