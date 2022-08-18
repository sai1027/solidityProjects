// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract result{
    string name;
    uint m1;
    uint m2;
    uint m3;
    uint total;
    uint avg;
    string grade;


    function addUser(string memory a, uint b, uint c, uint d )public{
        name=a;
        m1=b;
        m2=c;
        m3=d;
        total=m1+m2+m3;

        avg=(total/3);
        if (avg<=100 && avg>=91){
            grade='A';
        }
        else if (avg<=90 && avg>=81){
            grade='B';
        }
        else if (avg<=80 && avg>=71){
            grade='C';
        }
        else if (avg<=70 && avg>=61){
            grade='D';
        }
        else{
            grade='U';
        }

    }
    function display() public view returns(string memory, uint, uint, uint,uint,string memory){
        
        return(name, m1,m2,m3,total, grade );

    }
}