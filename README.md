```solidity
// Without Modifier

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OnlyOwner {
    uint public totalAmount;
    address userAddress;

    constructor() {
        userAddress = msg.sender;
    }

    function addAmount(uint recievedAmount) public {
        require(userAddress == msg.sender, "You are not the Real Owner ");
        totalAmount += recievedAmount;
    }

    function subAmmount(uint recievedAmount) public {
        require(userAddress == msg.sender, "You are not the Real Owner ");
        totalAmount -= recievedAmount;
    }

    function getToatalBalcnes() public view returns (uint) {
        return totalAmount;
    }
}
```

```solidity
// With Modifier

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OnlyOwner {
    uint public totalAmount;
    address userAddress;

    constructor() {
        userAddress = msg.sender;
    }

    modifier onlyOwner() {
        require(userAddress == msg.sender, "You are not the Real Owner ");
        _;
    }

    function addAmount(uint recievedAmount) public onlyOwner {
        totalAmount += recievedAmount;
    }

    function subAmmount(uint recievedAmount) public onlyOwner {
        require(recievedAmount <= 0, "can not be less than 0");
        totalAmount -= recievedAmount;
    }

    function getToatalBalcnes() public view returns (uint) {
        return totalAmount;
    }
}
```

### Differences

| Feature                 | Without Modifier Implementation                                      | With Modifier Implementation                                      |
|-------------------------|---------------------------------------------------------------------|--------------------------------------------------------------------|
| **Access Control**      | Implemented inline in each function using `require`.                | Centralized using `onlyOwner` modifier for reusability.            |
| **Redundancy**          | Access control logic repeated in `addAmount` and `subAmmount`.      | Eliminated redundancy by defining logic once in the `onlyOwner`.   |
| **Readability**         | Less readable due to duplicated logic.                             | Improved readability by abstracting access control.               |
| **Security Check**      | Directly placed in every function.                                 | Encapsulated within a modifier for better structure.              |
| **Modifier Usage**      | No use of modifiers.                                                | Uses `onlyOwner` modifier to streamline access control.           |
