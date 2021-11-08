// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract XpsToken is  ERC20Burnable {
    uint private constant HARD_CAP = 1000_000_000e18; // 1b token

    /**
     * @dev Constructor function of XPS Token
     * @dev set name, symbol and decimal of token
     * @dev mint totalSupply (cap) to address
     */
    constructor () ERC20("XPS Token", "XPS"){
        _mint(msg.sender, HARD_CAP);
    }
    
}