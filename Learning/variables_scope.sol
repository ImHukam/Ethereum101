pragma solidity 0.8.7;

contract variable_scope{

    string message = "Team Crypto";
     function helloworld() public returns(string memory){
     
         //string memory message= "team crypto";
         return message;
     }
}