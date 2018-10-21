//solium-disable linebreak-style
pragma solidity ^0.4.17;

contract Adoption {
    /// @dev array of eth  addresses
    address[16] public adopters;

    /// @dev: set pet's adopter to be their address if petId is valid
    function adopt(uint petId) public returns (uint) {
        require((petId >= 0 && petId < 15), "Invalid Pet Id");
        adopters[petId] = msg.sender;
        return petId;
    }

    /// @dev: return all of adopters array
    function getAdopters() public view returns (address[16]){
        return adopters;
    }

}