
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Array {
    // servral ways to initilize an array

    uint[] public arr;
    uint[] public arr2 = [1,2,3];

    // fixed size array, all element initilize to 0
    uint[10]  public myFixedSizeArray;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    // solidity can return the entire array
    // But this function should be avoided for
    // array that can grow indefinitly in length

    function getArr() public view returns (uint[] memory) {
        return  arr;
    }

    function push (uint i) public {
        //append to 
        // this will increase the length by 1
        arr.push(i);
    }

    function pop() public {
        // Remove last element from array
        // this will decrease the array length by 1
        arr.pop();
    }

    function getLength() public view   returns(uint) {
        return arr.length;
    }

    function remove (uint index) public {
        // Delete does not change the array Length
        // IT resets the value at index to its default value
        // incase 0

        delete arr[index];
    }

    function examples() external  {
        // create array in memory , only fixed size can be created

        uint[] memory a = new uint[](5);

    }

}