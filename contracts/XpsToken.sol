// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

import "@openzeppelin/contracts/token/ERC20/ERC20Capped.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract XpsToken is ERC20, ERC20Capped, ERC20Burnable {
    uint private constant HARD_CAP = 1000_000_000e18; // 1b token

    /**
     * @dev Constructor function of XPS Token
     * @dev set name, symbol and decimal of token
     * @dev mint totalSupply (cap) to address
     */
    constructor (
    ) public ERC20("XPS Token", "XPS") ERC20Capped(HARD_CAP) {
        _setupDecimals(18);
        _mint(msg.sender, HARD_CAP);
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual override(ERC20, ERC20Capped) {
        super._beforeTokenTransfer(from, to, amount);
    }

}