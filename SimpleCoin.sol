pragma solidity ^0.4.0;

contract SimpleCoin {

    mapping (address => uint256) public coinBalance;

    constructor() public (
        // at contract creation assign 10,000 coins to the address shown
        coinBalance(0x14723A09ACff6D2A60DcdF7aA4AFf308FDDC160C] = 10000
    )

    function transfer(address _to, uint256 _amount) public {
        coinBalance[msg.sneder] -= _amount;
        coinBalance[_to] += _amount;
    }
}
