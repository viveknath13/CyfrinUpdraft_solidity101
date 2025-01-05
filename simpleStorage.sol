// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract SimpleStorage {
    uint256 public faviouriteNUmber;
   

    // uint256 [] public listOfNumers;

    struct Person {
        string name;
        uint256 number;
    }
    //dynamic arrays
    Person[] public listOfPerson;
    mapping(string => uint256) public getPerson;

    function storeNumber(uint256 _newNumber)    public  virtual{
        faviouriteNUmber = _newNumber;
    }

    function getNumber() public view returns (uint256) {
        return faviouriteNUmber;
    }

    //calldata can't be modified
    //memory can be modified
    function addPerson(string calldata _name, uint256 _number) public {
        listOfPerson.push(Person(_name, _number));
        getPerson[_name] = _number;
    }

 
}

