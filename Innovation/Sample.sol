// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

//hello world

contract StoreNumber1 {

    uint256 public number = 5 ;
}

contract StoreNumber2 is StoreNumber1{

    uint256 public number1 = 10 ;

}
