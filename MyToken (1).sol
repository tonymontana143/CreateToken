pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract UniversityToken is ERC20 {

    address private owner;

    constructor() ERC20("<AITU_Iliiasl>", "Ili") {
        _mint(msg.sender, 2000);
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Error");
        _;
    }
  
    function getLatestTransactionTimestamp() public view returns (uint256) {
        require(totalSupply() > 0, "Error");
        return block.timestamp;
    }

    function getTransactionSender() public view returns (address) {
        return msg.sender;
    }

    function getTransactionReceiver() public view returns (address) {
        return owner;
    }
}
