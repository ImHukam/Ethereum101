pragma solidity ^0.8.7;
// it is only for learning ahd how to use require, not for deploy and test:

contract assertt{

    mapping(address=>uint) balance;

    function transfer(address recipient , uint amount) public view {
        require(balance[msg.sender] >= amount , "Balance not sufficient");  
        require(msg.sender != recipient, "don't transfer money to yourself");

        uint previousSenderAmount = balance[msg.sender];

        //here code for transfer asset
        //after transfer code

        assert(balance[msg.sender] == previousSenderAmount - amount);
    }
}



