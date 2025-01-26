
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Function {
    // function can return many values
    function returnMany()
        public 
        pure 
        returns (uint, bool,uint){
            return (1, true, 2);
        }

    // Return values can be named
    function named() 
        public 
        pure 
        returns ( uint x, bool b, uint y) {
            return (1, true, 2);
        }
    
    // Return value can be assigned to their name
    // In this case return statement can be omitted

    function assigned()
        public 
        pure 
        returns( uint x, bool b, uint y){
            x =1;
            b = true;
            y = 2;
        }

    // use destructuring assignment when calling another
    // function that returns multiple values.

    function destructureAssignment() 
        public 
        pure 
        returns (uint, bool,uint,uint,uint){
            (uint i, bool b, uint j) = returnMany();

            // values can be left out
            (uint x, ,uint y) = (4,5,6);
            return (i,b,j,x,y);
        }
    
}