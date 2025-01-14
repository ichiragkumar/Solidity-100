// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Vehicle {
    string brandName;

    constructor(string memory _brand){
        brandName = _brand;
    }

    function description() public pure virtual  returns(string memory){
        return "I am a vehicle";
    }
}


From 

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Vehicle {
    string brandName;

    constructor(string memory _brand){
        brandName = _brand;
    }

    function description() public pure virtual  returns(string memory){
        return "I am a vehicle";
    }
}
