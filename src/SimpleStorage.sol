// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // solidity version

contract SimpleStorage {
    // favoriteNumger gets initializeed to 0 if no value is given.
    uint256 public myFavoriteNumber; // 0

    // uint526[] listOfFavoriteNumbers;
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // Dynamic Array
    Person[] public listOfPeople; // [] - empty dynamic array

    // Search the favoriteNumber of someones with their name.
    mapping(string => uint256) public nameToFavoriteNumber;

    // insert an "uint256" value in myFavoriteNumber variable.
    function store(uint256 _favoriteNumber) public virtual {
        // added virtual so it can be inherited from another contract
        myFavoriteNumber = _favoriteNumber;
    }

    // view, its only a view function
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person({name: _name, favoriteNumber: _favoriteNumber}));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
