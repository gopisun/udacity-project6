pragma solidity ^0.5.16;

// Import the library 'Roles'
import "./Roles.sol";

// Define a contract 'DistributorRole' to manage this role - add, remove, check
contract DistributorRole {

  // Define 2 events, one for Adding, and other for Removing
  event AddedDistRole(address addr);
  event RemovedDistRole(address addr);

  // Define a struct 'distributors' by inheriting from 'Roles' library, struct Role
  Roles.Role distributors;

  // In the constructor make the address that deploys this contract the 1st distributor
  constructor() public {
    Roles.add(distributors, msg.sender);

  }

  // Define a modifier that checks to see if msg.sender has the appropriate role
  modifier onlyDistributor() {
    require(Roles.has(distributors, msg.sender) == true, "Sender needs to be a distributor");
    _;
  }

  // Define a function 'isDistributor' to check this role
  function isDistributor(address account) public view returns (bool) {
    if (Roles.has(distributors, account))
        return true;
    else 
        return false;
  }

  // Define a function 'addDistributor' that adds this role
  function addDistributor(address account) public onlyDistributor {
    _addDistributor(account);
    emit AddedDistRole(account);

  }

  // Define a function 'renounceDistributor' to renounce this role
  function renounceDistributor(address account) public {
    _removeDistributor(account);
    emit RemovedDistRole(account);

  }

  // Define an internal function '_addDistributor' to add this role, called by 'addDistributor'
  function _addDistributor(address account) internal {
    Roles.add(distributors, account);

  }

  // Define an internal function '_removeDistributor' to remove this role, called by 'removeDistributor'
  function _removeDistributor(address account) internal {
    Roles.add(distributors, account);

  }
}