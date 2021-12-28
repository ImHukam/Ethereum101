pragma solidity ^0.8.7;

contract structt{

    struct Person{
        uint age;
        string name;
    }

   Person people;

    function addPerson(uint _age,string memory _name) public{
        people.age=_age;
        people.name=_name;
    }

    function getPerson() public view returns(uint,string memory){
        return (people.age,people.name);
    }


}