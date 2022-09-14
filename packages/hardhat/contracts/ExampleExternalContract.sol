// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;  //Do not change the solidity version as it negativly impacts submission grading

contract ExampleExternalContract {

  bool public completed;

  function complete() public payable {
    completed = true;
  }

  function recover(uint256 amount) public {
    // payable(msg.sender).transfer(amount);

    (bool sent, bytes memory data) = msg.sender.call{value: amount}("");
    completed = false;
  }
}
