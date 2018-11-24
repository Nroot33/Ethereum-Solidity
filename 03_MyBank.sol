pragma solidity ^0.4.24;

contract Bank {
    uint private balance = 100;     
    
    function plus(uint amount) public { 
        balance += amount;
    }

    function minus(uint amount) public {
        balance -= amount;
    }

    function getBalance() constant public returns(uint) {
        return balance;
    }

}
