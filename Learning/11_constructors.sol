pragma solidity 0.8.7;

 contract Hello{

     string public message;
     constructor(string memory _message){
         message= _message;
     }
     
        function hellowrodl() public returns(string memory){
         return message;
     }
 }