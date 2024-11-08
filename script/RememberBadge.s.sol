// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {RememberBadge} from "../src/RememberBadge.sol";

contract RememberBadgeScript is Script {
    RememberBadge public badge;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        badge = new RememberBadge("Remember", "Remember", "https://datastore.sola.day/remember.json");

        vm.stopBroadcast();
    }
}
