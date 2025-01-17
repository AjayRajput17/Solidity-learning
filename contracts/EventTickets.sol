// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract EventTicket {

    uint  numberOfTicket;
    uint   ticketPrice;
    uint  totalAmount;
    uint  startAt;
    uint  endAt;
    uint  timeRange;
    string public message = "Buy you first Event Ticket";

    constructor(uint _ticketPrice){

        ticketPrice = _ticketPrice;
        startAt = block.timestamp;
        endAt = block.timestamp + 7 days;
        timeRange = (endAt - startAt)/ 60 / 60 / 24;

    }

    function buyTicket(uint _value) public returns(uint ticketId){

        numberOfTicket++;
        totalAmount += _value;
        ticketId = numberOfTicket;
    }

    function getAmount() public view returns(uint){
        return totalAmount;
    }

    
}