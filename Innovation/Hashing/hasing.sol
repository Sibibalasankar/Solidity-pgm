// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;


contract hashing{
    bytes32  word=0x06b3dfaec148fb1bb2b066f10ec285e7c9bf402ab32aa78a5d38e34566810cd2;

    function Multi_hash(string memory _text,uint256 _num,address _addr) public pure returns (bytes32){

        return keccak256(abi.encodePacked(_text,_num,_addr));
    }

    function single_string_hash(string memory _str) public pure returns (bytes32){

        return keccak256(abi.encodePacked(_str));
    }
    function Magic_word(string memory _answer) view public returns(bool){
        return keccak256(abi.encodePacked(_answer)) == word;
    }

    function multi_string_hash(string memory _str1,string memory _str2) public pure returns (bytes32){
        return keccak256(abi.encodePacked(_str1,_str2));
    }
}

// 0xf6568e65381c5fc6a447ddf0dcb848248282b798b2121d9944a87599b7921358-AAA BBB
// 0xf6568e65381c5fc6a447ddf0dcb848248282b798b2121d9944a87599b7921358-AA ABBB