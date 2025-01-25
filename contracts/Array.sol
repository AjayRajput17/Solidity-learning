
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// contract Array {
//     // servral ways to initilize an array

//     uint[] public arr;
//     uint[] public arr2 = [1,2,3];

//     // fixed size array, all element initilize to 0
//     uint[10]  public myFixedSizeArray;

//     function get(uint i) public view returns (uint) {
//         return arr[i];
//     }

//     // solidity can return the entire array
//     // But this function should be avoided for
//     // array that can grow indefinitly in length

//     function getArr() public view returns (uint[] memory) {
//         return  arr;
//     }

//     function push (uint i) public {
//         //append to 
//         // this will increase the length by 1
//         arr.push(i);
//     }

//     function pop() public {
//         // Remove last element from array
//         // this will decrease the array length by 1
//         arr.pop();
//     }

//     function getLength() public view   returns(uint) {
//         return arr.length;
//     }

//     function remove (uint index) public {
//         // Delete does not change the array Length
//         // IT resets the value at index to its default value
//         // incase 0

//         delete arr[index];
//     }

//     function examples() external  {
//         // create array in memory , only fixed size can be created

//         uint[] memory a = new uint[](5);

//     }

// }

// contract ArrayRemoveByShiting {
//     // [1,2,3] -- remove(1) --> [1,3,3] ->> [1,3]

//     uint[] public arr;

//     function remove (uint _index) public {
//         require(_index < arr.length, "index out of bound");

//         for(uint i =  _index; i< arr.length -1; i++){
//             arr[i] = arr[i+1];
//         }
//         arr.pop();
//     }

//     function test() external  {
//         arr = [1,2,3,4,5];
//         remove(2);
//         assert(arr[0] == 1);
//         assert(arr[1] == 2);
//         assert(arr[2] == 4);
//         assert(arr[3] == 5);
//         assert(arr.length == 4);
        
//     }
// }

contract ArrayReplacefromEnd {
    
    uint[] public arr;

    // deleting an element createa gap in the array.
    // one trick to keeep the array compacr is to
    // move the last element into the place to delete and call pop method

    function remove(uint _index) public {

        // move the last elemnt into the place to delete
        arr[_index] = arr[arr.length -1];

        //remove last element now
        arr.pop();
    }

    function test() public {
        arr = [1,2,3,4];

        remove(1);
    }

        function getArr() public view returns (uint[] memory) {
        return  arr;
    }
}