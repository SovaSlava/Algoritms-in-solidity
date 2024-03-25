// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Alg} from "../src/frequentlyUsedChar/alg.sol";

contract FrequentlyUsedCharTest is Test {
    Alg public alg;

    function setUp() public {
        alg = new Alg();
    }

    function test_commonArr() external {
        
        string[] memory chars = new string[](4);
        chars[0] = 'a';
        chars[1] = 'b';
        chars[2] = 'c';
        chars[3] = 'b';

        (string memory resCharStorage, uint ansCntStorage) = alg.uniqueCharsStorage(chars);
        (string memory resCharMemory, uint ansCntMemory) = alg.uniqueCharsNoStorage(chars);
        vm.assertEq(resCharStorage, resCharMemory);
        vm.assertEq(ansCntStorage, ansCntMemory);
        vm.assertEq(resCharStorage, 'b');
        vm.assertEq(ansCntStorage, 2);
    }

    function test_oneChar() external {
        string[] memory chars = new string[](1);
        chars[0] = 'a';

        (string memory resCharStorage, uint ansCntStorage) = alg.uniqueCharsStorage(chars);
        (string memory resCharMemory, uint ansCntMemory) = alg.uniqueCharsNoStorage(chars);

        vm.assertEq(resCharStorage, resCharMemory);
        vm.assertEq(ansCntStorage, ansCntMemory);
        vm.assertEq(resCharStorage, 'a');
        vm.assertEq(ansCntStorage, 1);
    }

    function test_emptyArr() external {
        string[] memory chars;

        (string memory resCharStorage, uint ansCntStorage) = alg.uniqueCharsStorage(chars);
        (string memory resCharMemory, uint ansCntMemory) = alg.uniqueCharsNoStorage(chars);

        vm.assertEq(resCharStorage, resCharMemory);
        vm.assertEq(ansCntStorage, ansCntMemory);
        vm.assertEq(resCharStorage, '');
        vm.assertEq(ansCntStorage, 0);
    }

    
}
