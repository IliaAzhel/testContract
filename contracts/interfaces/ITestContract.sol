pragma solidity = 0.8.17;

interface ITestContract{

    // only safe
    function changeSafe(address newSafe) external;

    // only safe 
    function setParamsOnlySafe(uint256 a, int256 b, address someAddress) external;

    // only safe
    function setParamsWithReturnsOnlySafe(uint256 a, int256 b, address someAddress) external returns(uint256);

    // everyone
    function setParams(uint256 a, int256 b, address someAddress) external;

}