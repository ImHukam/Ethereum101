pragma solidity ^0.8.7;

contract test{

    mapping(address=>uint) balance;

    function addBalance(uint _value) public { //this fun() for value add in address;
        balance[msg.sender]+= _value;
    }

    function getBalance(address _add) public view returns(uint){
        return balance[_add]; // balance[msg.sender];
    }
}