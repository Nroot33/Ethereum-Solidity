pragma solidity ^0.4.24;

contract Bank {
    uint private balance = 100;    
                                   
    address public myAddress = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c;
    
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
