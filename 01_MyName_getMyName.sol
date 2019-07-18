pragma solidity ^0.4.24;

contract MyName {
    string myName = "Hyo Coin";

    function getMyName() constant public returns(string) {
        return myName;
    }
}
