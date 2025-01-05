// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {SimpleStorage} from "contracts/simpleStorage.sol";

//Thsi is keyword inherit the parent contract:

contract AddFiveStroage is SimpleStorage{


    function getName()public pure returns(string memory){
        return  "Hello i am vivek";
    }

    function getNameInbytes()public pure returns(bytes32){
        return "Vivek";
    }


    function   storeNumber (uint256 _number) public override {

        faviouriteNUmber = _number + 5;
    }
}
