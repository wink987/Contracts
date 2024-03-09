// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract simplestorage {
    uint256 favoritenumber;
    mapping(string => uint256) public nameTofavoritenumber; //用名字去找索引，类似于python中的字典。这里的nameTofavoritenumber定义为mappimng类型
    struct People {
        uint256 favoritenumber;
        string name;
    }
    People[] public people; //定义一个结构体数组

    function store(uint256 _favoritenumber) public virtual {
        //可以被继承加virtual
        favoritenumber = _favoritenumber; //store函数中输入参数进行赋值，会修改区块链的状态
    }

    function retrieve() public view returns (uint256) {
        return favoritenumber; //view和pure关键字不会改变区块链的状态
    }

    function addperson(string memory _name, uint256 _favoritenumber) public {
        //memory代表临时数据，calldata也是临时变量，storage是永久的变量，函数一般用临时的变量
        people.push(People(_favoritenumber, _name)); //通过push函数添加person
        nameTofavoritenumber[_name] = _favoritenumber;
    }
}
