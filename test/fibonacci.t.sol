// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Alg} from "../src/fibonacci/alg.sol";

contract FibonacciTest is Test {
    Alg public alg;
    uint[] private fibonacciSequence = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144];
    function setUp() public {
        alg = new Alg();
    }

    function test_zeroIndex() external {
        uint result = alg.fibonacci(0);
        assertEq(result, 0);
    }

    function test_indexOne() external {
        uint result = alg.fibonacci(1);
        assertEq(result, 1);
    }

    function test_9thNumber() external {
        uint result = alg.fibonacci(9);
        assertEq(result, 21);
    }
}
