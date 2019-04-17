const TRC20Burnable = artifacts.require("./TRC20Burnable.sol");
const UPDCToken = artifacts.require('./UPDCToken.sol');

module.exports = function(deployer) {
  UPDCToken.deployed().then(async instance => {
    console.log(await instance.call('totalSupply'));
  });
};
