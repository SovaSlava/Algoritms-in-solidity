// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Alg} from "../src/secondMax/alg.sol";

contract SecondMaxTest is Test {
    Alg public alg;

    function setUp() public {
        alg = new Alg();
    }

    function test_commonArr() external {
        uint[] memory arr = new uint[](6);
        arr[0] = 3;
        arr[1] = 2;
        arr[2] = 1;
        arr[3] = 4;
        arr[4] = 0;
        arr[5] = 10;
        uint result = alg.findSecondMax(arr);
        assertEq(result, 4);
    }

    function test_emptyArr() external {
        uint[] memory arr = new uint[](6);
        uint result = alg.findSecondMax(arr);
        assertEq(result, 0);
    }

    function test_2equalMaxNumbers() external {
        uint[] memory arr = new uint[](4);
        arr[0] = 4;
        arr[1] = 3;
        arr[2] = 4;
        arr[3] = 1;
        uint result = alg.findSecondMax(arr);
        assertEq(result, 3);
    }

    function test_oneElementInArray() external {
        uint[] memory arr = new uint[](1);
        arr[0] = 5;
        uint result = alg.findSecondMax(arr);
        assertEq(result, 0);
    }
}
