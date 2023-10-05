// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;
contract Simplestorage{
    //this will get initial ized to zero 
    uint256 favoriteNumber;
    //public makes it visible
    //note function are also methods
    struct people{
        uint256 favoriteNumber;
        string name;
    }
    people[] public People;
    mapping (uint256 => string) public nonfavoritenumber;

    function store (uint256 _favoritenumber) public {
        favoriteNumber = _favoritenumber;
    }
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }
    function addperson (string memory _name , uint256 _favoritenumber) public  {
        People.push(people({favoriteNumber: _favoritenumber, name: _name}));
        nonfavoritenumber[_favoritenumber] = _name;
    }
}