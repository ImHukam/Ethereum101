// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract setterfunction{
    
    uint public getNumber;
    function setNumber(uint _number) public{
        getNumber= _number;
    }
}