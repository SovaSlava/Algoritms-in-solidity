// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Alg {

    function maxInArray(int[] calldata arr) external pure returns(int result) {
        uint arrLen = arr.length;
        if(arrLen == 0) return 0;
        result = arr[0];
            for(uint i =1; i<arr.length;i++) {
                if(arr[i] > result) result = arr[i];
            }
    }

}