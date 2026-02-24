pragma solidity ^0.8.20;

import "lib/forge-std/src/Test.sol";
import "src/tweets/TweetStorage.sol";

contract TestTweetStorage is Test{
    TweetStorage tweetContract;

    function setUp() public {
        tweetContract = new TweetStorage();
    }

    function testCreateTweet() public {
        uint _userId = 1;
        uint _expectedTweetId = 1;
        uint id = tweetContract.createTweet(_userId, "hola");
        assertEq(id, _expectedTweetId);

        console.log("Tweet it is", id);
        

    }
    function testTweetContent() public{
        uint id = tweetContract.createTweet(2, "segundo hola");
        (,string memory content, , ) =  tweetContract.tweets(id);
        assertEq(content, "segundo hola");

    }
}




