
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// mapping(keyType => valueType).
contract Mapping {
    // Mapping from address to uint
    mapping(address => uint) public myMap;

    function get(address _addr) public view returns(uint) {
        // mapping alwals return a value
        // if the value never set it return defalt value

        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
        // update the value at this adddress
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        // reset the value to the default value

        delete myMap[_addr];
    }
}

contract NestedMapping {
    // Nested mapping (mapping from adddress to another mapping)
    mapping(address => mapping(uint => bool)) public nested;

    function get(address _addr, uint _i) public view returns(bool) {
        // you can get value from a nested mapping
        // even when it is not initialized
        return nested[_addr][_i];
    }

    function set(address _addre1,uint _i,bool _boo ) public  {
        nested[_addre1][_i] = _boo;
    }

    function remove(address _addr1, uint _i) public {
        delete nested[_addr1][_i];
    }
}