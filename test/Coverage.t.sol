// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Coverage} from "../src/Coverage.sol";

contract CoverageTest is Test {
    Coverage public coverage;
    function setUp() public {
        coverage = new Coverage();
    }

    function test_notCovered() public {
        (uint256 a, bytes32 b, bytes[] memory c) = coverage.notCovered();
        assertEq(a, 1);
        assertEq(b, bytes32(0));
        assertEq(c, new bytes[](0));
    }

    function test_covered() public {
        (uint256 a, bytes32 b, bytes[] memory c) = coverage.covered();
        assertEq(a, 1);
        assertEq(b, bytes32(0));
        assertEq(c, new bytes[](0));
    }
}
