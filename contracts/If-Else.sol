
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// IF_ELSE
// contract IfElse {
//     uint public myNum = 5;
//     string public myString;

//     function get(uint _num) public returns(string memory){

//         if(_num  == 5){
//             myString = "Number is 5";
//         } else {
//             myString = "Number is Not 5";
//         } 
//     }

//     function get(uint _num) public returns(string memory){

//         return _num == 5 ? myString = "No is 5" : myString = "No is not 5";

//     }


// }


//LOOPS

// contract WhileLoop {

//     // while(condition){
//     //     Set of statements
//     // }
    
//     uint[]  data;
//     uint8 k =0;

//     function loop() public returns(uint[] memory){
//         while(k < 5){
//             k++;
//             data.push(k);
//         }
//         return data;
//     }

// }

// DO_WHILE LOOP

// contract DoWhile {
//     // do {
//     //     //statement
//     // }while(coondition)

//     uint[] data;
//     uint j =0;

//     function loop() public returns(uint[] memory){
//         do{
//             j++;
//             data.push(j);
//         }while(j < 5);
//         return data;
//     }
// }

// FOR LOOP

// contract forLoop {
    
//     // for(initialization;condition;iteration)
//     uint[] data;
   

//     function loop() public returns(uint[] memory){
//        for(uint i=0;i<5;i++){
//         data.push(i);
//        }
//         return data;
//     }


// }

// ERROR HANDLING
// --- require statement

// contract  Require{
//     function checkinput(uint _input) public view returns(string memory){

//         require(_input >=0, "invalid uint8");
//         require(_input <= 255, "invalid uint");

//         return "input is Unit8";
//     }

//     function Odd(uint _input) public pure  returns(bool){
//         require(_input % 2 != 0,"number is even");
//         return true;
//     }
// } 

// Assert satement

// contract AssertStatement{

//     bool public result;

//     function checkOverFlow(uint _num1, uint _num2) public {
//         uint sum = _num1 + _num2;
//         assert(sum <=255);
//         result = true;
//     }
// }

// REVERT HANDELER

// contract RevertStatement {
    
//     function checkOverflow(uint _num1, uint _num2) public view returns(string memory){
//         uint sum = _num1 + _num2;
//         if(sum < 0 || sum > 255){
//             revert("Overflow exits");
//         }else{
//             return("No overflow");
//         }
//     }
// }

