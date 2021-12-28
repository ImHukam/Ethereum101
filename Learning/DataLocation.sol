pragma solidity ^0.8.7;

contract DataLocation{

    //storage- presistant data storage, permanent store of data, accessble all over all time.
    //memory- temoprary data storage, store as long as function run.
    //calldata- similar to memory but read only,more detail will be cover in future.

    //state variables
    uint data= 123; // stored in storage

    function getString(string memory text , uint number ) public pure returns(string memory) {
        return text;// here text and number all variables stored in memory
    }
}