// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract GreaterThanCheck {
    function checkThreshold(uint number, uint threshold) public pure returns (bool) {
    require(threshold > 0, "Threshold must be greater than zero");

    if (number > threshold) {
        return true;
    } else if (number == threshold) {
        revert("Number is equal to the threshold");
    } else {
        assert(number < threshold);
        return false;
    }
}
}
