pragma solidity ^0.8.7;

contract structt{

    struct Student{
        uint roll;
        string name;
    }

    Student public s1;
    
    constructor(uint _roll, string memory _name){
        s1.roll=_roll;
        s1.name=_name;
    }

    function change(uint _roll, string memory _name) public{
        s1.roll=_roll;
        s1.name= _name;
    }
 
}


