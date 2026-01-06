// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IntentRegistry {
    struct Intent {
        address agent;
        string action;
        uint256 timestamp;
    }

    Intent[] public intents;

    function declareIntent(string memory action) public {
        intents.push(Intent(msg.sender, action, block.timestamp));
    }

    function getIntentCount() public view returns (uint256) {
        return intents.length;
    }
}
