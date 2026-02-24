// SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.20;
import './Owned.sol';

contract BaseStorage is Owned {
    address public controllerAddr;

    function setControllerAddr(address _controllerAddr) public  {
        require(msg.sender == ownerAddr);
        
        controllerAddr = _controllerAddr;
    }
}