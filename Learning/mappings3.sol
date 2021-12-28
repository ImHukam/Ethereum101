pragma solidity ^0.8.7;

contract test{

    struct player{
        string name;
        string cate;
        uint avg;
    }

    mapping (uint=>player) public data;

    function addData(uint _jersey,string memory _name, string memory _cate, uint _avg) public{
        data[_jersey]=player(_name,_cate,_avg);
    }
}