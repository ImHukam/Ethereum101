pragma solidity ^0.8.7;

contract test{

    mapping(uint=>string) public jersey;

    function setter(uint _jersey,string memory _name) public {
        jersey[_jersey]=_name;
    }
}