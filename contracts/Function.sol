
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Function {
    
    uint256  hey;

    // get data with function

    function getinfo() public view returns(uint){
        return hey;
    }

    function updateData(uint256 _hey) public {
        hey = _hey;
    }

    function get(uint256 _a, uint256  _b) public  returns(uint) {
        uint256 newNumber = _a + _b;
        hey = newNumber;
        return hey;

    }
}


