pragma solidity ^0.8.7;

interface GovermentInterface{

    //1st thing:
    function addTransaction(address _from,address _to, uint _amount) external;
}

contract Bank{
    //2nd thing:
    GovermentInterface govermentInstance= GovermentInterface(0xd9145CCE52D386f254917e481eB44e9943F39138); //contract address of goverment
    //put contract address:
    function AddData(address _sender, address _receiver, uint _value)public {
        govermentInstance.addTransaction(_sender, _receiver, _value);
    }
}


/*
need to two things to interacte with external contract
1. where to interact,means which function,,, overall we need interface /defination/how function/contract look like
2. 2nd we need location of that contract (contract instance/address of contract), so our contract can find excat external contract for interaction.
*/

/*
Goverment.sol

pragma solidity ^0.8.7;

contract Goverment{

    struct Transaction {
        address from;
        address to;
        uint amount;
        uint txId;
    }

    Transaction[] transactionLog;

    function addTransaction(address _from,address _to, uint _amount) external {
      
      Transaction memory _transactionLog= Transaction(_from, _to, _amount,transactionLog.length);
      transactionLog.push(_transactionLog); // transaction.push(Transaction(_from,_to,_amount, transactionLog.length));
    }

    function getTransaction(uint _index) public view returns(address,address,uint){
        return(transactionLog[_index].from, transactionLog[_index].to, transactionLog[_index].amount);
    }
}

/
*/