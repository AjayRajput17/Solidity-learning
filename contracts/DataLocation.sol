
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract DataLocation {
    uint[] public arr;
    mapping (uint => address) map;

    struct MyStruct {
        uint foo;
    }
    mapping (uint => MyStruct) MyStructs;

    function f() public {
        // call _f with state variables

        _f(arr, map, MyStructs[1]);

        // get a struct from mapping

        MyStruct storage MyStruct = MyStruct[1];

        // create a struct in memory
        MyStruct memory myMemStruct = MyStruct(0);


    }

    function _f (
        uint[] storage _arr,
        mapping (uint => address) storage _map,
        MyStruct storage _myStruct
    ) internal  {
        // do something with storage variables

    }

    // you can return memory variable
    function g(uint[] memory _arr)  public returns  (uint[] memory){
        // do something with mwmory array
    }

    function h (uint[] calldata _arr) external  {
        // do something with calldata array
    }
}