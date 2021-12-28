pragma solidity 0.8.7;

contract controlflow{

    string message = "correct address";

    function hello(int number) public view returns(string memory){

      /*  if(number == 10){
          return message;
        }
        else{
            return "Number is not 10";
        }*/
        
        if(msg.sender == 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4){
            return message;
        }
         else{
             return "wrong address";
         }
    }

}