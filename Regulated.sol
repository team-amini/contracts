pragma solidity ^0.4.2;

contract Regulated {

  struct MetaData {
    bytes metaData     
  }

  event RegulatedTransaction(
    address indexed _from;
    address index _to;
    address index _amount;
    RegulatedData _meta;
  );

}
