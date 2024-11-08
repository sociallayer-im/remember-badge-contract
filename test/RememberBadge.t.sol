// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {RememberBadge} from "../src/RememberBadge.sol";

contract RememberBadgeTest is Test {
    RememberBadge public badge;

    function setUp() public {
        badge = new RememberBadge("Remember", "Remember", "https://datastore.sola.day/remember.json");
    }

    function test_Increment() public {
        address addr = 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266;
        badge.mint(addr);
        // assertEq(badge.number(), 1);
    }
}
