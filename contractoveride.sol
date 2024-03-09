// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./simplestorage.sol";

contract extrastorage is simplestorage {
    function store(uint256 _favoritenumber) public override {
        //继承父类函数用overide
        favoritenumber = _favoritenumber + 5;
    }
}
