// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract YulTypes {
    function getNumber() external pure returns(uint256) {
        uint256 x;
        assembly {
            x := 42
        }
        return x;
    }
    function getHex() external pure returns(uint256) {
        uint256 x;
        assembly {
            x := 0xa
        }
        return x;
    }
    function demoString() external pure returns (bytes32, string memory) {
        bytes32 myString = "";

        assembly {
            myString := "[..............................]"
        }

        return (myString, string(abi.encode(myString)));
    }
}