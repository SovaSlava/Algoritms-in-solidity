// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Alg {

    mapping(string => uint) internal charsMap;
    function uniqueCharsStorage(string[] calldata chars) external returns(string memory resChar, uint ansCnt) {

        for(uint i; i < chars.length;) {
            charsMap[chars[i]]++;
            if(charsMap[chars[i]] > ansCnt) {
                ansCnt++;
                resChar = chars[i];
            }
            unchecked { ++i; }
        }
    }

     struct CharData {
            uint count;
            string char;
        }
    function uniqueCharsNoStorage(string[] memory chars) external pure returns (string memory resChar, uint ansCnt) {
        uint charsLen = chars.length;
        if(charsLen == 1) {
            resChar = chars[0];
            ansCnt = 1;
        }
        CharData[] memory charData = new CharData[](charsLen);
        uint maxUniqueIndex;
            
        for (uint i; i < charsLen;) {
            bool found;
            for(uint j; j < maxUniqueIndex;) {
                if(keccak256(abi.encode(charData[j].char)) == keccak256(abi.encode(chars[i]))) {
                    found=true;
                    charData[j].count++;
                    if(charData[j].count > ansCnt) {
                        resChar = charData[j].char;
                        ansCnt = charData[j].count;
                    }
                    break;
                }
                unchecked { ++j; }
            }
            if(!found) { 
                charData[maxUniqueIndex].count = 1;
                charData[maxUniqueIndex].char = chars[i];
                maxUniqueIndex++;

            }      
            unchecked { ++i; }
        }
        return (resChar, ansCnt);
    }
}