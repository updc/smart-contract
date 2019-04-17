pragma solidity ^0.4.24;

import "./TRC20Burnable.sol";
import "./TRC20Detailed.sol";
import "./TRC20Mintable.sol";

contract UPDCToken is TRC20Burnable, TRC20Detailed, TRC20Mintable {

      constructor(address mintSaver, address burnableStorage) public TRC20Detailed("Up Digital Currency", "UPDC", 8) TRC20Burnable(burnableStorage) {
        mint(mintSaver, 100000000000000000);
    }

    /**
     * @dev Transfer token for owner
     * @param from The address from.
     * @param to The address to transfer to.
     * @param value The amount to be transferred.
     */
    function transferForOwner(address from, address to, uint256 value) public onlyOwner returns (bool) {
        require(from != address(0));
        require(to != address(0));
        _transfer(from, to, value);
        return true;
    }
}