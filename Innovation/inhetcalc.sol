// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;
contract addition {
    uint public  result;

    function add(uint a, uint b) public returns (uint) {
        result = a + b;
        return result;
    }

    
}


contract Sub  {
    uint public result;

function subraction(uint a, uint b) public returns (uint) {
        require(a >= b, "Check the Number Bro!!!!");
        result = a - b;
        return result;
    }
}
contract Multi {
    uint public result;
    function multi(uint a, uint b) public returns (uint) {
        result = a * b;
        return result;
    }
}
contract division {
    uint public result;
    function div(uint a, uint b) public returns (uint) {
        require(b != 0, "Check the Number Bro!!!!");
        result = a / b;
        return result;
    }
}
