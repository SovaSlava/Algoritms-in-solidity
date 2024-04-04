// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Alg {

    function fibonacci(uint x) external pure returns(uint) {
        if(x < 2) return x;
        (uint prev, uint cur) = (0, 1);
        for(uint i=2;i<x;i++) {
            (prev, cur) = (cur, prev + cur);
        }
        return cur;
    }

}