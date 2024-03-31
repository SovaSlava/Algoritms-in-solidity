// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Alg} from "../src/rle/alg.sol";

contract RleTest is Test {
    Alg public alg;

    function setUp() public {
        alg = new Alg();
    }

    function test_commonArr() external {
        string[] memory arr = new string[](6);
        arr[0] = 'A';
        arr[1] = 'A';
        arr[2] = 'B';
        arr[3] = 'C';
        arr[4] = 'C';
        arr[5] = 'C';
        string memory result = alg.rle(arr);
        assertEq(keccak256(abi.encodePacked(result)), keccak256(abi.encodePacked("A2B1C3")));
    }

    
}
