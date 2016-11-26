pragma solidity ^0.4.2;

import "./Regulated.sol";

contract MetaCoin is Regulated {
	mapping (address => uint) balances;

	function MetaCoin() {
		balances[msg.sender] = 10000;
	}

	function sendCoin(address receiver, uint amount, bytes meta) returns(bool sufficient) {
		if (balances[msg.sender] < amount) return false;
		balances[msg.sender] -= amount;
		balances[receiver] += amount;
		RegulatedTransaction(this, msg.sender, receiver, amount, meta);
		return true;
	}

	function getBalance(address addr) returns(uint) {
		return balances[addr];
	}
}
