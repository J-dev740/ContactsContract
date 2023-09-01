// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract  Contact{

//state variables
address public immutable i_owner;

// mapping(address=>uint256) public s_details;

//events
event storeContact(string name , uint256 contactInfo);

//errors


constructor(){
    i_owner=msg.sender;
}
//function  to store a contract
//params name ,contact details
function Store(string memory name, uint256 contactNo) public  {

    emit storeContact(name,contactNo);

}

//function to retreive a contact
//params name 
// function getContact(string memory name) public view returns(uint256 )



}