pragma solidity ^0.8.0;

contract MyVault {

    uint balance = 0;
    address owner;

    constructor() {
        owner = msg.sender;
    }

    function deposit(uint amount) public {
        balance = balance + amount;
    }

    function withdraw(uint amount) public {

        require(msg.sender == owner);

        require(amount <= balance);

        balance = balance - amount;
    }

    function getBalance() public view returns(uint) {
        return balance;
    }
}
