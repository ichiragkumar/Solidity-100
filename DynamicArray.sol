// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;



contract DynamicSizearray {


    uint[] public numbers;
    uint public totalSum =0;


    function addNumber(uint _number) public returns (uint){
        numbers.push(_number);
        return numbers[numbers.length-1];
    }

    function sumofallarrayMembers() public  returns  (uint) {
        for(uint i;i<numbers.length;i++){
            totalSum += numbers[numbers.length-1];
        }
        return totalSum;
    }

    

}
