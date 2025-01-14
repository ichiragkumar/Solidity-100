// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;




contract ContactPerson {
    struct Person {
        string name;
        uint age;
        address userAddress;
    }

    Person public person;


    function addPerson(string memory _name,  uint _age, address _userAddress) public  returns (string memory){
        person.name = _name;
        person.age = _age;
        person.userAddress = _userAddress;
        return  "User Detail have been saved";
    }


    function getUsers() public view returns  (string memory, uint , address ){
        return (person.name , person.age, person.userAddress);
    }
}
