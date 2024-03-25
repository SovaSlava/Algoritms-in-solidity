// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Alg} from "../src/sumOfArray/alg.sol";

contract SumOfArrayTest is Test {
    Alg public alg;

    function setUp() public {
        alg = new Alg();
    }

    function test_sumOfPositiveNumbers() external view {
        
        int[] memory arr = new int[](3);
        arr[0] = 1;
        arr[1] = 2;
        arr[2] = 3;
        int result = alg.sum(arr);
        vm.assertEq(result, int(6));
    }

    function test_sumOfNegativeNumbers() external view {
        int[] memory arr = new int[](3);
        arr[0] = -1;
        arr[1] = -2;
        arr[2] = -3;
        int result = alg.sum(arr);
        vm.assertEq(result, -6);
    }

    function test_sumOfNegativeAndPositiveNumbers() external view {
        int[] memory arr = new int[](4);
        arr[0] = -1;
        arr[1] = -2;
        arr[2] = 3;
        arr[3] = 4;
        int result = alg.sum(arr);
        vm.assertEq(result, 4);
    }

    function test_emptyArray() external view {
        int[] memory arr;
        int result = alg.sum(arr);
        vm.assertEq(result, int(0));
    }
}
