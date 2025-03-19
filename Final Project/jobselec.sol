// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract JobSelection {
    struct Candidate {
        uint id;
        string name;
        string aadhar;
        string qualification;
        mapping(string => string) statusUpdates;
        address candidateAddress;
    }
    
    address public admin;
    uint public candidateCount = 0;
    mapping(uint => Candidate) public candidates;
    mapping(address => bool) public authorizedAuthorities;
    
    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }
    
    modifier onlyAuthority() {
        require(authorizedAuthorities[msg.sender], "Not an authorized authority");
        _;
    }
    
    event CandidateRegistered(uint id, string name, address candidateAddress);
    event StatusUpdated(uint id, string category, string status);
    
    constructor() {
        admin = msg.sender;
    }
    
    function registerCandidate(string memory _name, string memory _aadhar, string memory _qualification) public {
        candidateCount++;
        Candidate storage c = candidates[candidateCount];
        c.id = candidateCount;
        c.name = _name;
        c.aadhar = _aadhar;
        c.qualification = _qualification;
        c.candidateAddress = msg.sender;
        c.statusUpdates["Application"] = "Applied";
        emit CandidateRegistered(candidateCount, _name, msg.sender);
    }
    
    function updateStatus(uint _id, string memory _category, string memory _status) public onlyAuthority {
        require(_id > 0 && _id <= candidateCount, "Invalid candidate ID");
        candidates[_id].statusUpdates[_category] = _status;
        emit StatusUpdated(_id, _category, _status);
    }
    
    function getCandidate(uint _id) public view returns (uint, string memory, string memory, string memory, address) {
        require(_id > 0 && _id <= candidateCount, "Invalid candidate ID");
        Candidate storage c = candidates[_id];
        return (c.id, c.name, c.aadhar, c.qualification, c.candidateAddress);
    }
    
    function getCandidateStatus(uint _id, string memory _category) public view returns (string memory) {
        require(_id > 0 && _id <= candidateCount, "Invalid candidate ID");
        return candidates[_id].statusUpdates[_category];
    }
    
   function authorizeAuthority(address _authority) public onlyAdmin {
    authorizedAuthorities[_authority] = true;
}

    function removeAuthority(address _authority) public onlyAdmin {
        authorizedAuthorities[_authority] = false;
    }
}
