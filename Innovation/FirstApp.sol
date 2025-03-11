// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Sample{

    uint public a=100;
    uint public b=10;
    uint public result;

    function add(uint c) public returns (uint){
        result=a+c;
        return result;
    }

    function Sub(uint d) public returns (uint){
        require(a>=d,"First Number Should Not be Small !!");
         result=a-d;
        return result;
    }
    function Mul(uint e) public returns (uint){
         result=a*e;
        return result;
    }
    function Div(uint f) public returns (uint){
        require(f!=0,"The Denominator Should Not be Zero!!");
         result=a/f;
        return result;
    }

}