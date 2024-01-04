# University Token
## Usage
Smart contract is an ERC-20 token. Name of token "AITU_Iliias", it has some functions to retrieve information about transactions.
## Screenshots
![image](https://github.com/tonymontana143/CreateToken/assets/125411745/8368405b-a1b4-4371-85fe-d15f6106156c)
![image](https://github.com/tonymontana143/CreateToken/assets/125411745/d5b71de7-4ca4-4c74-861f-2a5b562d4d72)
## Examples
- Create 2000 tokens as initial supply
  _mint(msg.sender, 2000);

- Get latest transaction timestamp
  function getLatestTransactionTimestamp() public view returns (uint256) {
        require(totalSupply() > 0, "Error");
        return block.timestamp;
    }-
- Get transaction sender
  function getTransactionSender() public view returns (address) {
        return msg.sender;
    }
- Get transaction receiver
  '''
  function getTransactionReceiver() public view returns (address) {
        return owner;
    }
  '''
## License
  https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/LICENSE 
