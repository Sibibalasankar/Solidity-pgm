// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract mini_project {
    address public  owner;
    address public  Cust_add;
    uint256 public amount;

    string public message = "Welcome";

    constructor() {
        owner = msg.sender;
    }

    enum Status {
        Ordered,
        Pending,
        Shipped,
        Delivered
    }

    modifier only_owner() {
        require(owner == msg.sender, "Not Owner");
        _;
    }
    modifier balance_checker() {
        require(amount >= 1 ether, "Insufficient Balance");
        _;
    }
    modifier status_limit() {
        require(
            uint256(status) <= uint256(type(Status).max),
            "Already Delivered"
        );
        _;
    }

    Status status;
    event Status_set(string mymsg);

    function get_status() private view returns (Status) {
       
            return status;

    }

    function set_status(Status x)
        public
        only_owner
        status_limit
        returns (string memory)
    {
        status = x;
        if (status == Status.Shipped) {
            emit Status_set("Shipped");
            message = "Shipped";
            return message;
        } else if (status == Status.Delivered) {
            emit Status_set("Deliverd");
            message = "Delivered";
            return message;
        } else {
            emit Status_set("pending");
            message = "pending";
            return message;
        }
    }

    function Get_amount() public payable {}

    function update_balance() public returns (uint256) {
        amount = address(this).balance;
        return amount;
    }

    function Owner_ship(address new_add) public only_owner balance_checker {
        if (amount >= 1 ether) {
            Cust_add = new_add;
            status = Status.Pending;
            message = "Order Has Been Placed Successfully";
        }
    }
}
