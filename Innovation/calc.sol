// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract calculator{
    uint public result;


    // To add Two Numbers
    function add(uint a,uint b) public  returns (uint){
        result=a+b;
        return result;
    }

    function Sub(uint a,uint b) public  returns (uint){
    require(a>=b, "Check the Number Bro!!!!");       result =a-b;
    return result;
    }
    function Mul(uint a,uint b) public  returns (uint){
        result=a*b;
        return result;
    }
    function div(uint a,uint b) public  returns (uint){
         require(b != 0, "Zero Poda Koodathu!!!");
        result=a/b;
        return result;
    }
    function mod(uint a,uint b) public  returns (uint){
        result=a%b;
        return result;
    }

}
