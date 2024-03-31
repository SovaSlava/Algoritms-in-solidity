// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Alg} from "../src/minEvenNumber/alg.sol";

contract MinEvenNumberTest is Test {
    Alg public alg;

    function setUp() public {
        alg = new Alg();
    }

    function test_commonArr() external {
        int[] memory arr = new int[](4);
        arr[0] = 5;
        arr[1] = 4;
        arr[2] = 6;
        arr[3] = 10;
        int result = alg.findMinEven(arr);
        assertEq(result, 4);
    }

    function test_2minNumbers() external {
        int[] memory arr = new int[](3);
        arr[0] = 4;
        arr[1] = 4;
        arr[2] = 2;
        int result = alg.findMinEven(arr);
        assertEq(result, 2);
    }

    function test_noEvenNumbers() external {
        int[] memory arr = new int[](3);
        arr[0] = 5;
        arr[1] = 7;
        arr[2] = 9;
        int result = alg.findMinEven(arr);
        assertEq(result, -1);
    }
}
