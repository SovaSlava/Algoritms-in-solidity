// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Alg {

    function sum(uint[] calldata arr) external pure returns(uint result) {
        uint arrLen = arr.length;
        for(uint i; i < arrLen;) {
            result += arr[i];
            unchecked { ++i; }
        }
    }

}