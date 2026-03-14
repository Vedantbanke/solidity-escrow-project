// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Escrow{
    address public buyer;
    address public seller;
    uint public amount;

    bool public diposited;
    bool public released;
    bool public approved;
    constructor (address _seller) {
        buyer=msg.sender;
        seller = _seller;

    }

    function diposit() public  payable{

        require(msg.value>0, "you need to send some ether");
        require(msg.sender==buyer,"buyer can diposit");
        require(!diposited,"funds aiready diposited");
        amount = msg.value;
        diposited = true;
    } 
    function approval() public {

        require(msg.sender == buyer);
        require(diposited == true);
        require(!released);
        approved = true;
    }
    function realeasepayment() public{
        require(msg.sender == buyer);
        require(diposited);
        require(!released);
        require(approved);
        
        

       
        (bool success,) = payable(seller).call{value:amount}("");
        require(success,"transaction failed"); 
        released = true;
        
    

    }

    
}
