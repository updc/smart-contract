pragma solidity ^0.4.24;

import "./TRC20.sol";

/**
 * @title Burnable Token
 * @dev Token that can be irreversibly burned (destroyed).
 */
contract TRC20Burnable is TRC20 {

    address private _burnableStorage;

    constructor(address burnableStorage) public {
        _burnableStorage = burnableStorage;
    }

    /**
     * @return the address of the burnable storage.
     */
    function burnableStorage() public view returns (address) {
        return _burnableStorage;
    }

    /**
     * @dev Burns a specific amount of tokens from the burnable storage.
     * @param value The amount of token to be burned.
     */
    function burnStorage(uint256 value) public onlyOwner {
        _burn(_burnableStorage, value);
    }

    /**
     * @dev Burns a specific amount of tokens.
     * @param value The amount of token to be burned.
     */
    function burn(uint256 value) public {
        _burn(msg.sender, value);
    }

    /**
     * @dev Burns a specific amount of tokens from the target address and decrements allowance
     * @param from address The address which you want to send tokens from
     * @param value uint256 The amount of token to be burned
     */
    function burnFrom(address from, uint256 value) public onlyOwner {
        _burnFrom(from, value);
    }
}