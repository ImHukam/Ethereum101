pragma solidity ^0.8.7;
// it is only for learning ahd how to use require, not for deploy and test:

contract requiree{

    mapping(address=>uint) balance;
    address owner;

    constructor(){
        owner = msg.sender;
    }

    function transfer(address recipient , uint amount) public view {
        require(balance[msg.sender] >= amount , "Balance not sufficient");  
        require(amount>=0);
        require(msg.sender != recipient, "don't transfer money to yourself");
        require(msg.sender == owner);
        //here code for transfer asset
    }
}