
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// contract StateVariable {

//     string public myState;
//     uint256 public myNum;

//     // string public defaultText = "hey this is an default text";
//     // uint256 public defaultNum = 5;

//     // bytes public defaulbytes = "hey default";

//     // uint256[] public myNumber;

//     // constructor(string memory _text, uint _no){
//     //     myState = _text;
//     //     myNum = _no;
//     // }

//     function update(string memory _text, uint _no) public
//     {
//         myState = _text;
//          myNum = _no;
//     }
// }

// contract Localvariable {

//     uint256 public mynumber;

//     // function for local variable
//     function local() public  returns(uint){
//         // local variable are the variable their scope are inside the block 
//         // not store on the blockchain
//         uint256 i = 345;
//         mynumber = i;
//         return mynumber;

//     }
// }

// contract GlobalVariables{

//     address public owner;
//     address public Myblockhash;
//     uint256 public difficulty;
//     uint256 public gasLimit;
//     uint256 public number;
//     uint256 public timestamp;
//     uint256 public value;
//     uint256 public nowOn;
//     uint256 public origin;
//     uint256 public gasprice;
//     bytes public callData;
//     bytes public Firstfour;


//     constructor(){
//         owner = msg.sender;
//         Myblockhash = block.coinbase;
//         difficulty = block.difficulty;
//         gasLimit = block.gaslimit;
//         number = block.number;
//         timestamp = block.timestamp;
//         gasprice = tx.gasprice;
//         callData = msg.data;
        
//     }
// }

contract Constant {

    // transaction cost 128609
    // address public myAdd = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // transaction cost 102745
    address public constant  MY_ADDR = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    function getConstant()  public view returns(address){
        return MY_ADDR;
    }
    
}