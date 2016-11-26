pragma solidity ^0.4.2;

contract Regulated {

  event RegulatedTransaction(
    address indexed _security,
    address indexed _from,
    address indexed _to,
    uint _amount,
    bytes _meta
  );

}
