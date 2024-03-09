// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract Structsol {
    People public person = People({age: 2, name: "zsan"});
    //uint8[] public favoritenumber;
    People[] public people;
    struct People {
        uint8 age;
        string name;
    }

    function addperson(uint8 _age, string memory _name) public {
        //string前面加memory
        //第一种方法；
        // People memory newperson = People({age: _age,name: _name});
        //people.push(newperson);

        //第二种方法
        people.push(People(_age, _name));
    }
}
