// SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.20;

contract Owned {
    address public ownerAddr;

    constructor() public {
        ownerAddr = msg.sender;
    }

    function transferOwnership(address _newOwner) public onlyOwner {
        //only current owner can set a new owner addr
        require(_newOwner != ownerAddr(0));
	
	ownerAddr = _newOwner;
    }
}
