// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Alg {

    function findMinEven(int[] memory arr) external pure returns(int ans) {
        ans = -1;
        for(uint i; i < arr.length;i++) {
            if( arr[i] % 2 == 0 && (ans == -1 || arr[i] < ans)) {
                ans = arr[i];
            }
        }
    }

}