pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract AT is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function AT(address _owner)  UpgradeableToken(_owner) {
    name = "AT";
    symbol = "GF";
    totalSupply = 1000000000000;
    decimals = 12;

    balances[_owner] = totalSupply;
  }
}