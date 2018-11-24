pragma solidity ^0.4.24;

contract MyName {
    
    string external myName; 

  
    function getMyName() constant external returns(string) {
        return myName;
    }

  
    function setMyName(string newMyName) public {
        getMyName();
    }
}

contract CallContract {
    function callGetMyName() public {
        getMyName();
    }
}
