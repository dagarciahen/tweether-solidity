// SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.20;

contract Owned {
    address public ownerAddr;

    constructor() public {
        ownerAddr = msg.sender;
    }

    function transferOwnership(address _newOwner) public {
        //only current owner can set a new owner addr
        require(msg.sender == ownerAddr);

        //the new addres cannot be null
        require(_newOwner != address(0));
        ownerAddr = _newOwner;

    }
}