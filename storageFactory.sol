// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;
import {SimpleStorage} from "contracts/simpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public mySimpleStorage;

    //This function Deploy the contract
    function deployContract() public {
        SimpleStorage newSimpleStorage = new SimpleStorage();
        mySimpleStorage.push(newSimpleStorage);
    }

    function sStorge(uint256 _index, uint256 _Number) public {
        SimpleStorage newSimpleStorage = mySimpleStorage[_index];
        newSimpleStorage.storeNumber(_Number);
    }

    function getStorage(uint256 _index) public view returns (uint256) {
       return  mySimpleStorage[_index].getNumber();
    }


    function addDetails(string calldata _name , uint256 _age)public {

        SimpleStorage newSimpleStorge = mySimpleStorage[_age];
        newSimpleStorge.addPerson(_name, _age);

    }

   

 
}

