pragma solidity ^0.5.7;

contract Airbnb {

  struct Project {
    string name;
    string description;
    
    bool[] isBooked;
  }

  uint256 public projectId;

  mapping(uint256 => Project) public properties;

 
}
