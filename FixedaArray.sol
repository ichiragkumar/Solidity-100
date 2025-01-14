// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;



contract FixedSizeArrray {

    uint8[10] public cars;

    function addCars(uint8 _carNumber) public returns (uint) {
        cars[0] =_carNumber;
        cars[1] =_carNumber;
        cars[2] =_carNumber;
        cars[3] =_carNumber;
        return cars[0];
        
    }

    function getCars(uint8 carIndex) public view returns (uint){
        require(carIndex < cars.length, "should be less then index");
        uint8 result = cars[carIndex];

        return  result;
    }
}
