//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Whitelist {
    uint8 public maxWhitelistedAddress;

    mapping (address=> bool) public whitelistedAddress;

    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxWhitelistedAddress) {
        maxWhitelistedAddress = _maxWhitelistedAddress;
    }

    function addAddressToWhitelist() public {
        require(numAddressesWhitelisted <= maxWhitelistedAddress,"the limit has been reached");

        require(!whitelistedAddress[msg.sender],"Sender has already been whitelisted");

        whitelistedAddress[msg.sender] = true;

numAddressesWhitelisted += 1;
    }
}