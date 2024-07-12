// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Coverage {
    function notCovered()
        public
        pure
        returns (uint256 a, bytes32 b, bytes[] memory c)
    {
        a = 1;
        b = b;
        c = c;
    }

    function covered()
        public
        pure
        returns (uint256 a, bytes32 b, bytes[] memory c)
    {
        a = 1;
        b = bytes32(0);
        c = new bytes[](0);
    }
}
