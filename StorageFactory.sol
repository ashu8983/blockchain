// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract Storagefactory{
    SimpleStorage[] public simpleStoragearray;
    function createsimplestoragecontract() public{
        SimpleStorage simpleStorage= new SimpleStorage();
        simpleStoragearray.push(simpleStorage);}


        function sfstore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
            simpleStoragearray[_simpleStorageIndex].store(_simpleStorageNumber);
           //store(_simpleStorageNumber);
        
    }
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){
       return simpleStoragearray[_simpleStorageIndex].retrieve();
       
    }
}
