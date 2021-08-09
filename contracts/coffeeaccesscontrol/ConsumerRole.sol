pragma solidity ^0.5.16;

// Import the library 'Roles'
import "./Roles.sol";

// Define a contract 'ConsumerRole' to manage this role - add, remove, check
contract ConsumerRole {

  // Define 2 events, one for Adding, and other for Removing
  // event for Adding
  event AddedToConsumer(address addr);

  // event for Removing
  event RemovedFromConsumer(address addr);

  // Define a struct 'consumers' by inheriting from 'Roles' library, struct Role
  Roles.Role consumers;
  // struct Consumers is Roles.Role;

  // In the constructor make the address that deploys this contract the 1st consumer
  constructor() public {
    Roles.add(consumers, msg.sender);
  }

  // Define a modifier that checks to see if msg.sender has the appropriate role
  modifier onlyConsumer() {
     require(Roles.has(consumers, msg.sender) == true, "Caller has to be a consumer" );
    _;
  }

  // Define a function 'isConsumer' to check this role
  function isConsumer(address account) public view returns (bool) {
    if (Roles.has(consumers, account))
       return true;
    else
       return false;
    
  }

  // Define a function 'addConsumer' that adds this role
  function addConsumer(address account) public onlyConsumer {
    _addConsumer(account); 
    emit AddedToConsumer(account);
    
  }

  // Define a function 'renounceConsumer' to renounce this role
  function renounceConsumer(address account) public {
     _removeConsumer(account);
     emit RemovedFromConsumer(account);
    
  }

  // Define an internal function '_addConsumer' to add this role, called by 'addConsumer'
  function _addConsumer(address account) internal {
     Roles.add(consumers, account);
  }

  // Define an internal function '_removeConsumer' to remove this role, called by 'removeConsumer'
  function _removeConsumer(address account) internal {
    Roles.remove(consumers, account);
    
  }
}