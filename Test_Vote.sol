by inflearn / practice 
======================

pragma solidity 0.4.24;

contract Vote{

    //structure
    struct candidator{
        string name;
        uint upVote;
    }
    
    //variable
    bool live;
    address owner;
    candidator[] public candidatorlist;
    
    
    //mapping
    mapping(address => bool) Voted;
    
    
    //event
    event AddCandiator(string name);
    event UpVote(string candidator, uint upVote);
    event FinishVote(bool live);
    event Voting(address owner)
    
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    
    //constructor
    constructor() public{
        owner = msg.sender;
        live =true;
        
        emit Voting(owner);
    }
    
    
    // candidator
    function addCandiator(string _name) onlyOwner{
        require(live == true);
        require(candidatorlist.length < 3);
        candidatorlist.push(candidator(_name,0));
        
        emit AddCandiator(_name);
    }
    
    // voting
    function upVote(uint _indexofCandiator) public{
        require(live == true);
        require(_indexofCandiator < candidatorlist.length);
        require(Voted[msg.sender] == false);
        
        candidatorlist[_indexofCandiator].upVote++;    
        
        Voted[msg.sender] = true;
        
        emit UpVote(candidatorlist[_indexofCandiator].name, candidatorlist[_indexofCandiator].upVote);
    }
    
    // finish vote
    function FinishVote() onlyOwner{
        require(live == true);
        live = false;
        
        emit FinishVote(live);
    }
}
