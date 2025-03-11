// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

// contract FunctionModifier {

//     address owner;

//     constructor() {
//         owner = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
//     }

//     modifier org_owner() {
//         require(msg.sender == owner, "You're Not Owner!!!!");
//         _;
//     }

//     modifier address_Check(address add) {
//         require(add != address(0), "The Entered Address is Invalid!!!!");
//         _;
//     }

//     function get_owner() public view org_owner returns (address) {
//         return owner;
//     }

//     function deposit() public payable {
//     }

//     function getBalance() public view returns (uint) {
//         return address(this).balance;
//     }

//     function withdraw() public org_owner {
//         payable(owner).transfer(address(this).balance);
//     }
// }


