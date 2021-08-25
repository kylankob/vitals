pragma solidity ^0.8.0;

contract Sandbox {
  address public myAddress;

  function setAddress(address _address) public {
    myAddress = _address;
  }

  function getBalanceOfAddress() public view returns(uint) {
    return myAddress.balance;
  }

  string public myString;

  function setMyString(string memory _myString) public {
    myString = _myString;
  }

  uint256 public myUint;

  function setMyUnit(uint _myUint) public {
    myUint = _myUint;
  }

  bool public myBool;

  function setMyBool(bool _myBool) public {
    myBool = _myBool;
  }

  uint8 public myUint8;

  function incrementUint() pulbic {
    myUint8++;
  }

  function decrementUnit() public {
    myUint--;
  }
}