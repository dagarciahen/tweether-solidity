// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.20;
contract UserStorage is BaseStorage {
	//mappin uses uint as key to get info
	//if public we dont need getter function
	mapping(uint => Profile) public profiles;
	struct Profile {
		uint id;
		bytes32 username;

}
uint latestUserId = 0;
function createUser(bytes32 _username) public returns(uint) {
	latestUserId++;

	profiles[latestUserId] = Profile(latestUserId, _username);

	return latestUserId;
}
// function getUsername(uint _id) public view returns(bytes32){
// 	//we need only username field
// 	return profiles[_id].username;

// }
}

