pragma solidity 0.8.7;

contract loops{

    function count(int number) public pure returns(int){
        int i=0;
        while(i<10){
            number++;
            i++;
        }
         return number;

       /*  for(int i=0; i<10; i++){
             number++;
         }
         return number; */
    }
}