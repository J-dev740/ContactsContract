// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract  Contact{

//state variables
address public immutable i_owner;

mapping(address=>mapping(string=>uint256)) public UserToContact;

// mapping(address=>uint256) public s_details;

//events
event storeContact(string name , uint256 contactInfo);
event contactRemoved(string name , uint256 contactInfo);


//errors


constructor(){
    i_owner=msg.sender;
}
//function  to store a contract
//params name ,contact details
function Store(string memory name, uint256 contactNo) public  {
    UserToContact[i_owner][name]=contactNo;
    emit storeContact(name,contactNo);

}

//function to retreive a contact
//params name 
// function getContact(string memory name) public view returns(uint256 )

//function to delete contact and emit an event
function RemoveContact(string memory name , uint256 contactNo) public {
    UserToContact[i_owner][name]=0;
    emit contactRemoved(name,contactNo);
}


}