// SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.20;
//address is a elemental data type address(0) = 0x00000,...

contract Owned {
    address public ownerAddr;

    constructor() public {
        ownerAddr = msg.sender;
    }
    modifier onlyOwner() {
	    require(msg.sender == ownerAddr);
	    _;
    }


    function transferOwnership(address _newOwner) public onlyOwner {
        //only current owner can set a new owner addr
        require(_newOwner != address(0));
	
	ownerAddr = _newOwner;
    }
}
