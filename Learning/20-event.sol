pragma solidity ^0.8.7;

contract events{

    mapping (address=>uint) public balance;

    address owner;
    constructor(){
        owner=msg.sender;
    }

    modifier onlyOwner{
        require(msg.sender==owner);
        _;
    }

    event balanceAdded(uint amount,address indexed depositedTo);

    function addBalance(uint _toAdd) public onlyOwner returns(uint){
        balance[msg.sender] += _toAdd;
        emit balanceAdded(_toAdd,msg.sender);
        return balance[msg.sender];
    }
}