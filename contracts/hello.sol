
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// contract MyFirstContract{

//     string public  hey = "Hey Ajay";
//     uint256 public no;

//     // constructor(string memory _hey, uint _no){
//     //     hey = _hey;
//     //     no = _no;
//     // }

//     function addinfo(string memory _hey, uint _no) public {
//         hey = _hey;
//         no = _no;
//     }
// }

contract NFTCount {

    uint public numberOfNFT;

    // this function will increment the NFT
    function addNFT() public {
        numberOfNFT += 1;
    }

    // this will decrese NFT by one
    function deleteNFT() public {
        numberOfNFT -=1;
    }

    // featch the data from NFT
    function checkTotalNFT() public view returns (uint256){
        return numberOfNFT;
    }
}