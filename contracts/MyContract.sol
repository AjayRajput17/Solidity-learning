

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract MyContract {
    // state variable
    uint public myUint = 1;
    uint256 public myUint256  = 1;

    // Local Variable
    function getValue() public pure returns(uint) {
        uint value = 1;
        return  value;
    }
}