// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.20;

contract ExampleContract {
  mapping(address => uint256) public balances;

    function setSomeonesBalance(address owner, uint256 amount) public {
        balances[owner] = amount;
    }

    function transferTokensBetweenAddresses(address sender, address receiver, uint256 amount) public {
        balances[sender] -= amount;   // deduct/debit the sender's balance
        balances[receiver] += amount; // credit the reciever's balance
    }
      function whoami() public view returns (address,address) {
		address sender = msg.sender;
        address _contract = address(this);
		return (sender,_contract);
	}
}
