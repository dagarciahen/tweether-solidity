//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/users/UserStorage.sol";
import "../src/users/UserController.sol";
import "../src/tweets/TweetStorage.sol";
import "../src/tweets/TweetController.sol";

contract DeployScript is Script {
	function run() external {
		uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

		vm.startBroadcast(deployerPrivateKey);

		UserStorage userStorage = new UserStorage();
		TweetStorage tweetStorage = new TweetStorage();

		UserController userController = new UserController();
		TweetController tweetController = new TweetController();
		//el script ejecuta la private_key, esa direccion es el owner

		userStorage.setControllerAddr(address(userController));
		tweetStorage.setControllerAddr(address(tweetController));

		vm.StopBroadcast();

		console.log("UserStorage deployed at:", address(userStorage));
		console.log("TweetStorage deployed at:", address(tweetController));
