pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "./IExerciceSolution.sol";

contract ExcerciceSolution is ERC721 {
    uint256 nexttokenid = 1;
     mapping(uint => Animal) public animals;
     mapping(address => bool) public registeredBreeders;

     uint256 public constant REGISTRATION_PRICE = 0.0000001 ether;
     event BreederRegistered(address breeder);

    struct Animal {
        string name;
        bool wings;
        uint legs;
        uint sex;
    }

    constructor() ERC721("ERC721", "TK721") {
        _mint(0x7759a66191f6e80ff8A2C0ab833886C7b632bbB7, 26); // Total supply: 1M tokens
        nexttokenid++;
    }

    // function declareAnimal(
    //     string memory _name,
    //     bool _wings,
    //     uint256 _legs,
    //     uint256 _sex
    // ) external {
    //     require(registeredBreeders[msg.sender], "Not a registered breeder");

    //     // Mint a new animal NFT
    //     uint256 animalId = nexttokenid;
    //     nexttokenid++;
    // }

    // Retrieve animal characteristics
    function getAnimalCharacteristics(uint animalNumber) 
        external 
        view 
        returns (string memory _name, bool _wings, uint _legs, uint _sex) 
    {
        Animal memory animal = animals[animalNumber];
        return (animal.name, animal.wings, animal.legs, animal.sex);
    }

    function isBreeder(address account) external returns (bool){
        return registeredBreeders[account];
    }


    function registrationPrice() external returns (uint256){
        return REGISTRATION_PRICE;
    }


    function registerMeAsBreeder() external payable {
        require(msg.value >= REGISTRATION_PRICE, "Incorrect registration fee");
        require(!registeredBreeders[msg.sender], "Already registered as a breeder");

        // Register the sender as a breeder
        registeredBreeders[msg.sender] = true;

        // Emit event
        emit BreederRegistered(msg.sender);
    }
}
