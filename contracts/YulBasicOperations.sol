// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract YulBasicOperations {

    function isPrime(uint256 myNumber) public pure returns (bool prime) {
        prime = true;
        assembly {
            let halfNumber := add(div(myNumber, 2), 1)
            for { let i := 2 } lt(i, halfNumber) { i := add(i, 1) }
            {
                if iszero(mod(myNumber, i)) {
                    prime := 0
                    break
                }
            }
        }
    }

    function testPrime() external pure {
        require(isPrime(2), "not prime");
        require(isPrime(3), "not prime");
        require(isPrime(7), "not prime");
    }
}