// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./simplestorage.sol"; //导入simplestruct.sol文件，abi也绑定了

contract structfactory {
    simplestorage[] public simplestructArray; //创建simplestorage合约数组

    function creatsimplestructContract() public {
        //创建creatsimplestructContract函数，作用是部署合约
        simplestorage S = new simplestorage(); //创建一个simplestorage类型的S合约
        simplestructArray.push(S); //添加到合约的数组中
    }

    function sfStore(
        uint256 _simplestroageindex,
        uint256 _simplestroagenumber
    ) public {
        simplestorage S = simplestructArray[_simplestroageindex]; //将地址赋值给S合约
        S.store(_simplestroagenumber); //通过index将数值赋值给对应的S合约中的store函数中的number
    }

    function sfGet(uint256 _simplestroageindex) public view returns (uint256) {
        simplestorage S = simplestructArray[_simplestroageindex];
        //or  return simplestructArray[_simplestroageindex].retrieve();
        return S.retrieve(); //调用simplestorage合约中的retrieve函数
    }
}
