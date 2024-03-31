// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import "openzeppelin-contracts/contracts/utils/Strings.sol";
contract Alg {

    function packRle(string memory c, uint count) internal  pure returns(string memory) {
        if(count > 1) {
            return string(abi.encodePacked(c,Strings.toString(count)));
        }
        return c;
    }

  function rle(string[] memory chars) external pure returns(string memory result) {
        uint lastIndex = 0;
        string memory packed;
        for(uint i=1; i< chars.length;i++) {
            if(keccak256(abi.encodePacked(chars[i])) != keccak256(abi.encodePacked(chars[i-1]))) {
                packed = packRle(chars[i-1], i - lastIndex);
                result = string(abi.encodePacked(result,packed));
                lastIndex = i;
            }
        }
        result = string(abi.encodePacked(result,packRle(chars[lastIndex], chars.length - lastIndex)));
    }

}