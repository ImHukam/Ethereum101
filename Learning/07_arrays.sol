pragma solidity ^0.8.7;

contract array{

    int[] numbers;

    function getNumbers(int _number) public {
        numbers.push(_number);
    }

    function setNumber() public view returns(int[] memory){
        return numbers;
    }
}