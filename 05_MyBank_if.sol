pragma solidity ^0.4.24;

contract Bank {
    uint private balance = 100;     
                                   
    
    function plus() public payable {   
                                     
        balance += msg.value;
    }

    function minus(uint amount) public {
        if(balance >= amount) {
            balance -= amount;
            
            if(!msg.sender.send(amount)) {
                balance += amount;
            }
        }
    }

    function getBalance() constant public returns(uint) {
        return balance;
    }

}
