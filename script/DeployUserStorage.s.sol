pragma solidity ^0.8.10; 
import "forge-std/Script.sol";
import "../src/UserStorage.sol";

contract DeployUserStorage is Script {
	function run() external {
		vm.startBroadcast();

		new UserStorage();
		vm.stopBroadcast();
	}
}

