// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

import "./newlearn.sol";

contract StorageFactory{
    newlearn [] public listofsimplestorageContract;

    function createsimpleStorageContract() public{
        newlearn newsimplestorage = new newlearn();
        listofsimplestorageContract.push(newsimplestorage);
    
    }
    function sfstore (uint256 _SimplestorageIndex, uint256 _newsimpleStorageNo) public {
        //We first get the
        //Address and ABi (Application Binary Interface)
        newlearn mysimplestorage = listofsimplestorageContract[_SimplestorageIndex];
        mysimplestorage.store(_newsimpleStorageNo); 

    }
    function sfget (uint256 _simplestorageindex) public view returns (uint256){
        newlearn mysimplestorage = listofsimplestorageContract[_simplestorageindex];
        return mysimplestorage.retrieve();
        //you can still do 
        // return listofsimplestoragecontract [_simplestorageindex].retrieve;
     
    }
}