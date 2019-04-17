pragma solidity ^0.4.23;

import "./TRC20.sol";

/**
 * @title TRC20Mintable
 * @dev TRC20 minting logic
 */
contract TRC20Mintable is TRC20 {
    /**
     * @dev Function to mint tokens
     * @param to The address that will receive the minted tokens.
     * @param value The amount of tokens to mint.
     * @return A boolean that indicates if the operation was successful.
     */
    function mint(address to, uint256 value) public onlyOwner returns (bool) {
        _mint(to, value);
        return true;
    }
}