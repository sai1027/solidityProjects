// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract bank{
    string name;
    uint acnum;
    uint balance;


    function addUser( string memory a, uint b, uint c)public{
        name=a;
        acnum=b;
        balance=c;
    }

    function getUser()public view returns(string memory, uint, uint){
        return (
            name, acnum, balance
        );
    }

  
    function deposit(uint inr)public returns(uint) {
        balance+=inr;
        return balance;
    }
    function withdraw(uint inr)public  returns(uint){
        if(balance>=inr){
            balance-=inr;
            
        }
        return balance;
    }


}