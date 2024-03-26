// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Alg} from "../src/maxInArray/alg.sol";

contract MaxInArrayTest is Test {
    Alg public alg;

    function setUp() public {
        alg = new Alg();
    }

    function test_maxInArrayWithPositiveNumbers() external view {     
        int[] memory arr = new int[](3);
        arr[0] = 1;
        arr[1] = 2;
        arr[2] = 3;
        int result = alg.maxInArray(arr);
        vm.assertEq(result, int(3));
    }

    function test_maxInArrayWithPositiveNumbersAndNegative() external view {     
        int[] memory arr = new int[](4);
        arr[0] = 1;
        arr[1] = 2;
        arr[2] = 3;
        arr[3] = -4;
        int result = alg.maxInArray(arr);
        vm.assertEq(result, int(3));
    }

    function test_maxInArrayWithOneElement() external view {     
        int[] memory arr = new int[](1);
        arr[0] = -3;
        int result = alg.maxInArray(arr);
        vm.assertEq(result, -3);
    }

    function test_maxInArrayInEmptyArray() external view {     
        int[] memory arr;
        int result = alg.maxInArray(arr);
        vm.assertEq(result, 0);
    }
}