pragma solidity ^0.8.7;

contract structt{

    struct Person{
        uint age;
        string name;
    }

    Person[] people;

    function addPerson(uint _age,string memory _name) public{
        Person memory newPerson =Person(_age,_name);
        people.push(newPerson);
    }

    function getPerson(uint _index) public view returns(uint,string memory){
        Person memory persontoReturn = people[_index];
        return (persontoReturn.age,persontoReturn.name);
    }


}