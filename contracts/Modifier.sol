// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


// FUNCTION MODIFIER
// NOTES:
// --MODIFIER ARE THE CODE THAT CAN BE EXECUTE BEFORE AND AFTER THE FUNCTION CALL
// -- GENERALLY USED FOR 3 REASION
// RESTRICATION ACCESSS, VALIDATION INPUT, GUARD AGAINST REENTRANCY HACK

contract FunctionModifier{

    address public owner;
    uint public  x =10;
    bool  public locked;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyowner(){
        require(msg.sender == owner, "not Owner");
        _;
    }

    modifier validateData(address _addr){
        require(_addr != address(0), "Not  valid");
        _;
    }
    //0x5B38Da6a701c568545dCfcB03FcB875f56beddC4  0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
    function changeOwner(address _newOwner) public onlyowner validateData(_newOwner){
        owner = _newOwner;
    }

    modifier noReentrancy(){
        require(!locked,"No reentrancy");
        locked = true;
        _;
        locked = false;
    }

    function decrement(uint i) public noReentrancy{
        x -=1;

        if(i > 1){
            decrement(i - 1);
        }
    }
}