/**
contract Variable_Displaying{
    uint immutable a;
    uint immutable b;
    uint constant c=30;
    uint d=40;
    uint  temp=90;
    constructor(uint _a,uint _b){
        a=_a;
        b=_b;
    }
    function Get_A()  public view  returns (uint){
        return a;
    }
    function Get_B()  public view returns (uint){
        return b;
    }
    function Get_C()  public pure returns (uint){
        return c;
    }
    function Get_D()  public view returns (uint){
        return d;
    }
} **/

// Task 18.02.2025

//#1

// contract Ownership {
//     address public immutable owner;

//     constructor() {
//         owner = msg.sender;
//     }
// }

// Task 18.02.2025

//#1 While Looping

// contract Gas{
//     uint public i=0;

//     function looping() public {
//         while (true){
//             i+=1;
// }
//     }
// }

// #2

// contract IfElse{
// function loop(uint a) public  pure  returns(uint){
//     if(a<10){
//         return 0;
//     }
//     else if(a<20)
//     {
//         return 1;

//     }
//     else {
//         return 2;
//     }
// }

// function loop(uint a) public pure returns (uint){
//     return a<10?1:2;
// }

//}

//#3 Enumuration

// contract Enum {
//     enum Status {
//         Pending, //0
//         Shipped, //1
//         Accepted, //2
//         Rejected, //3
//         Cancelled //4
//     }

//     Status status;

//     function get_status() public view returns (Status) {
//         return status;
//     }

//     function set_status(Status x) public {
//         status = x;
//     }

//     function Cancel_status() public pure returns (Status) {
//         return Status.Cancelled;
//     }

//     function Accept_status() public pure returns (Status) {
//         return Status.Accepted;
//     }

//     function Reject_status() public pure returns (Status) {
//         return Status.Rejected;
//     }

//     function Shipped_status() public pure returns (Status) {
//         return Status.Shipped;
//     }

//     function reset() public {
//         delete status;
//     }
// }

//#Task 20.02.25

// contract Sturct {
//     struct Aadhaar {
//        string Name;
//        uint Age;
//        string  DOB;
//        string Gender;

//     }

//     Aadhaar[]  info;

//     function set_info(string memory _name,uint _age,string memory _dob,string memory _gender) public  {
//         require(info.length<5,"Limit Reached!!!!!!!!!!!!!");
//         info.push(Aadhaar(_name,_age,_dob,_gender));
//     }
//     function Get_info(uint index) public view returns (string memory,uint,string memory,string memory){
//         require(index<info.length,"Out of Index");
//         return (info[index].Name,info[index].Age,info[index].DOB,info[index].Gender);
//     }

// }

// contract Sturct2 {
//     struct Todo {
//        string text;
//        bool completed;
//     }

//     Todo[]  todos;

//     function set_info(string memory _text,bool _done) public  {
//         todos.push(Todo(_text,_done));
//     }
//     function Get_info(uint index) public view returns (string memory,bool){
//         require(index<todos.length,"Out of Index");
//         return (todos[index].text,todos[index].completed);
//     }

// }

// Task 24.02.25

// contract mapping_account {
//     mapping(address => uint)  user_balance;

//     function set_balance(address account,uint balance) public {
//         user_balance[account]=balance;
//     }
//     function get_balance(address account) view public returns(uint){
//         return user_balance[account];
//     }
// }

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ProductTracking {
    enum Status {
        Pending, // 0
        Shipped, // 1
        Delivered // 2
    }

    struct products {
        uint256 id;
        string Product_name;
        Status status;
    }

    mapping(uint256 => products) product;
    uint256 count;

    address owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    Status status;

    function add_product(string memory name)   public  {
        count++;
        product[count]=products(count,name,Status.Delivered);
    }

    function setStatus(uint id ,Status status)  public {
       product[id].status = status;
    }

    function getStatus() public view returns (Status) {
        return status;
    }

    function getOwner() public view returns (address) {
        if (uint256(status) == 2) {
            return msg.sender;
        } else {
            return owner;
        }
    }
}
