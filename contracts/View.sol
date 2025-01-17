
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// contract View {
    
//     uint256 num1 = 2;
//     uint256 num2 = 7;

//     // Using view to check the variable

//     // function getResults() public view returns(uint,uint){
//     //     return (num1, num2);
//     // }

//     // what if i want to calculate

//     function getResults() public view returns(uint256 product,uint256 total){
        

//         product = num1 * num2;
//         total = num1 + num2;
//         return (product, total);

//     }
// }

contract Pure {

    uint num1 = 4;
    uint num2 = 10;

    function getData() public pure returns(uint,uint){

        uint muNum1 = 30;
        uint muNum2 = 50;

        return(muNum1+50, muNum2+50);
    }
}