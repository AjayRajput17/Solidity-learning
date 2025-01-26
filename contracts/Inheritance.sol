
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
     //Inheritance
     // Factories
     // interaction

contract Ownable {
    address public owner;

   modifier  onlyOwner() {
        require(msg.sender == owner,"secret can access only owner");
        _;
    } 

    constructor() {
        owner = msg.sender;
    }    

}

contract SecretValt {
    string secret;

    constructor(string memory _secret)  {
        secret = _secret;
    }

    function getSecret()  public  view  returns(string memory) {
        return secret;
    }

}


contract MyContract is Ownable {
    address secretValt;
    constructor(string memory _secret)  {
        SecretValt _secretvalt = new SecretValt(_secret);
        secretValt = address(_secretvalt);
        super;

    }

    function getSecret()  public view onlyOwner returns(string memory) {
        return SecretValt(secretValt).getSecret();
    }

     
}
