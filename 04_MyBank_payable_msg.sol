pragma solidity ^0.4.24;

contract Bank {
    uint private balance = 100;     
    
    function plus() public payable {    
        balance += msg.value;
    }

    function minus(uint amount) public {
        balance -= amount;
        msg.sender.send(amount);        
    }

    function getBalance() constant public returns(uint) {
        return balance;
    }

}
