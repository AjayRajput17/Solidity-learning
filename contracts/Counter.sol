

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    uint public count= 0;  // 1,2,3


    function incrementCount() public  {
        count++;
    }

}