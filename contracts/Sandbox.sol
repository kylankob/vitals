// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Sandbox {
  mapping(uint => bool) public myMapping;
  mapping(address => bool) public myAddressMapping;

  function setValue(uint _index) public {
    myMapping[_index] = true;
  }

  function setMyAddressToTrue() public {
    myAddressMapping[msg.sender] = true;
  }

  uint public balanceReceived;

  function receiveMoney() public payable {
    balanceReceived += msg.value;
  }

  function withdrawMoney() public {
    // address payable to = msg.sender;
    // to.transfer(this.getBalance());
  }

  function withdrawMoneyTo(address payable _to) public {
    _to.transfer(this.getBalance());
  }

  address public myAddress;

  function setAddress(address _address) public {
    myAddress = _address;
  }

  function getBalance() public view returns(uint) {
    return address(this).balance;
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

  function incrementUint() public {
    myUint8++;
  }

  function decrementUnit() public {
    myUint--;
  }
}