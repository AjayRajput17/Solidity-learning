
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract DataTypes{

    bool public hey;
    bool public no = true;

    // Uint stands for unsigned integer, meanini non- negative integer
    uint8 a;// renge 0 - 2**8-1 // 255
    uint16 b; // renge 0 - 2**16-1 // 65535
    uint256 c;// renge 0 - 2**256-1 // ....

    uint8 public u8 =1;
    uint public u256 = 456;
    uint public u = 123;    // uint is an alias from uint256

    // NEGATIVE NUMBER
    // NEGATIVE NUMBER ARE ALLOW for int Types, like uint, diffrent ranges are available from int8 to int256

    // int256 renge from -2 ** 255 to 2 ** 255-1

    int8 public i8 = -1;
    int public i1256 = 456;
    int public i = -1234;

    // Now you can add min and max int

    int public minInt = type(int).min;
    int public maxint = type(int).max;

    //array 

    //in solodity, the data types bytes represents a sequence of bytes, so generally there are two types of bytes
    // --- fixed-sized bytes arrray
    // --- dynamic-sized types array
    // so when you define byte, in smart contract represent dynamic bytes array

    bytes1 public a1= 0xb5;
    bytes1 public b1 = 0x56;


    // Address Types

    address public hi;
    address public addr;


    // Defaul types values

    bool public defaultBool; // false
    uint public number; //0
    int public defaultint; //0
    address public hello; // 0x0000000


    
}