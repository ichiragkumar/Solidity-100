// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;



contract EnsNameService {
     mapping(address => string) public ensUsers;


    function setName(string memory _name) public  returns (address) {
        ensUsers[msg.sender] = _name;
        return  msg.sender;
    }


    function getNames(address _addres) public view returns (string memory){
        return ensUsers[_addres];
    }

}
