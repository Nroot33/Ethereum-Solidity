pragma solidity ^0.4.24;

contract MyName {
    
    string myName;

  
    function getMyName() constant internal returns(string) {
        return myName;
    }

   
    function setMyName(string newMyName) public {
        getMyName();
    }
}

contract CallContract is MyName {
    function callGetMyName() public {
        getMyName();
    }
}

contract CallContract2 {
    MyName myName;
    function callGetMyName() public {
        myName.getMyName();
    }
}
