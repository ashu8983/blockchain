//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";


library PriceConvertor{
function GetPrice() public view returns (uint256){
        AggregatorV3Interface pricefeed= AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (, int256 answer, , ,) = pricefeed.latestRoundData();
return uint256(answer * 1e10); // to convert from 8 to 18 decimals


        //ABI
        //address 0x694AA1769357215DE4FAC081bf1f309aDC325306

    }

    function getVersion() public view returns (uint256) {
        AggregatorV3Interface pricefeed=AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        return pricefeed.version(); 
    }

    function getConversionRate(uint256 ethamount) public view returns (uint256) {
        uint256 ethprice=GetPrice();
        uint256 ethamountinUSD= (ethamount * ethprice) / 1e18;
        return ethamountinUSD;

    }
}
