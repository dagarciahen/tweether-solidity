pragma solidity ^0.8.20;

import "lib/forge-std/src/Test.sol";
import "src/TweetStorage.sol";

contract TestTweetStorage{
    function testCreateTweet() public {
        TweetStorage _storage = TweetStorage(DeployedAddresses.TweetStorage());

        uint _userId = 1;
        uint _expectedTweetId = 1;
        assert.equal(
            _storage.createTweet(_userId, "Hello World!"),
            _expectedTweetId,
            "Should create tweet with ID 1"
        );
    }
}




