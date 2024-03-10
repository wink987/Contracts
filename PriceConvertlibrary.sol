// SPDX-License-Identifier: MIT
//get funds from users，从用户获得酬金
//withdraw funds提取酬金
//t a minimum funding value，设置最小的酬金金额
pragma solidity ^0.8.0;
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

library PriceConvert {
    //接口
    function getprice() internal view returns (uint256) {
        //接口的函数用internal
        //ABI
        //Address  0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43
        AggregatorV3Interface priceFeed = AggregatorV3Interface(
            0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43
        ); //预言机中对应的测试网中币转usd的地址
        (, int256 price, , , ) = priceFeed.latestRoundData();
        return uint256(price * 1e10);
    }

    function getConvertionRate(
        uint256 ethAmount
    ) internal view returns (uint256) {
        uint256 ethPrice = getprice();
        uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1e18;
        return ethAmountInUsd;
    }
}
