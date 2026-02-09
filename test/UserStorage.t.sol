// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "lib/forge-std/src/Test.sol";
import "../src/UserStorage.sol";
//forge test uses a fake fanstam blockchain 
//test that a transaction exists 
contract UserStorageTest is Test {
    UserStorage storageContract;

    function setUp() public {
        storageContract = new UserStorage();
    }

    function testCanCreateUser() public {
        bytes32 username = "tristan";
        
        uint userId = storageContract.createUser(username);
        assertEq(userId, 1);
        
        //bytes32 savedName = storageContract.getUsername(userId);
        (uint id, bytes32 savedName) = storageContract.profiles(userId);
 //also (, bytes32 savedName)
        assertEq(savedName, "tristan"); 

        

        console.log("User created with ID:", userId);
    }
}
