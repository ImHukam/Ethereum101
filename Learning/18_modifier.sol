pragma solidity ^0.8.7;
// it is only for learning ahd how to use require, not for deploy and test:

contract requiree{

    mapping(address=>uint) balance;
    address owner;

    modifier onlyOwner {
        require(msg.sender == owner);
        _; // it means, run the function
    }

    constructor(){
        owner = msg.sender;
    }

    function transfer(address recipient , uint amount) public onlyOwner view {
        require(balance[msg.sender] >= amount);
        require(amount>=0);
        require(msg.sender != recipient);

        //here code for transfer asset
    }
}