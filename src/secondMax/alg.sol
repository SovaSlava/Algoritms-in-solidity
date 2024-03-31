// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Alg {

    function findSecondMax(uint[] memory arr) external pure returns(uint secondMax) {
        if(arr.length < 2) return 0;
        uint firstMax = arr[0] > arr[1] ? arr[0]: arr[1];
        secondMax = arr[0] > arr[1] ? arr[1]: arr[0];
        for(uint i; i < arr.length; i++) {
            if(arr[i] > firstMax) {
                secondMax = firstMax;
                firstMax = arr[i];
            }
            else if(arr[i] > secondMax && arr[i] < firstMax) {
                secondMax = arr[i];
            }

        }

    }

}