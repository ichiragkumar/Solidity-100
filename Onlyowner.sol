// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract OnlyOwner {

    uint public totalAmount;
    address userAddress;

    constructor() {
        userAddress = msg.sender;
    }

    modifier onlyOwner(){
        require(userAddress == msg.sender, "You are not the Real Owner ");
        _;
    }


    function addAmount(uint recievedAmount) public  onlyOwner {
        totalAmount += recievedAmount;

    }

    function subAmmount(uint recievedAmount) public onlyOwner {
        require(recievedAmount <= 0 , "can not be less than 0");
        totalAmount -= recievedAmount;
    }


    function getToatalBalcnes() public  view returns (uint) {
        return totalAmount;
    }
}
