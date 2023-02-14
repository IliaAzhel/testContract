pragma solidity = 0.8.17;
import "./interfaces/ITestContract.sol";

contract TestContract is ITestContract{

    uint256 public a;
    int256 public b;
    address public someAddress;

    address public safe;

    constructor(address _safe){
        safe = _safe;
    }

    modifier onlySafe(){
        require(msg.sender == safe,"only safe");
        _;
    }

    function changeSafe(address newSafe) external onlySafe{
        safe = newSafe;
    }

    function setParamsOnlySafe(uint256 _a, int256 _b, address _someAddress) external onlySafe{
        a = _a;
        b = _b;
        someAddress = _someAddress;
    }

    function setParamsWithReturnsOnlySafe(uint256 _a, int256 _b, address _someAddress) external onlySafe returns(uint256){
        a = _a;
        b = _b;
        someAddress = _someAddress;
        return a;
    }

    function setParams(uint256 _a, int256 _b, address _someAddress) external {
        a = _a;
        b = _b;
        someAddress = _someAddress;
    }
}