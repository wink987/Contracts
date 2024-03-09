// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract Simple {
    uint8 public favoritenumber;

    function store(uint8 _favorite) public {
        //store函数在这里相当于部署合约消耗gas
        favoritenumber = _favorite;
        favoritenumber = favoritenumber + 1;
        add(); //调用add时会消耗gas
    }

    //view,pure 本身不消耗gas
    function retrieve() public view returns (uint8) {
        return favoritenumber;
    }

    function add() public pure returns (uint8) {
        return 1 + 1;
    }
}
//0xd9145CCE52D386f254917e481eB44e9943F39138;
