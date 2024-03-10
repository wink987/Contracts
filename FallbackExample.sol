// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FallbackExample {
    uint256 public result;

    receive() external payable {
        //有交易或者交易的值为0时调用receive
        result = 1;
    }

    fallback() external payable {
        //有交易并且输入了指定的函数，但是找不到指定的函数调用fallback
        result = 2;
    }
}
