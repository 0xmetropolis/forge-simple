// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "src/Counter.sol";

contract CounterScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        Counter counter = new Counter();
        counter.setNumber(42);

        Counter counter_determinstic = new Counter{ salt: bytes32(uint256(1)) }();
        counter_determinstic.setNumber(21);
        vm.stopBroadcast();
    }
}
