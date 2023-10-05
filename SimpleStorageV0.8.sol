// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract newlearn {

    uint256 myfavoriteNumber;

    struct person {
        uint256 favoriteNumber;
        string Name;
    }
    
    person[] public listofpeople; //create an array
    mapping (string=>uint256) public nonfavoriteNumber; /* This maps or it create a key and a 
    outcome.. but here it means anytime u look up for a striing you will get a Uint256 */

    
    function store (uint256 FavvyNo) public virtual  {
        myfavoriteNumber = FavvyNo;
    }
    function retrieve() public view returns  (uint256){
        return myfavoriteNumber;
    }
    function Addperson (string memory _name, uint256 _favoritenumber) public {
        listofpeople.push(person(_favoritenumber, _name));
        nonfavoriteNumber[_name] = _favoritenumber; //When you enter a name stored on the array, it will get the favorite number
    }
}