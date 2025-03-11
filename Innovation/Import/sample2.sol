// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;    

import "./sample.sol";

contract sampleing{
    setup  s = new setup();

    function getResult() external view returns (string memory){
        return s.data();
    }
    
}