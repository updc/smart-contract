const UPDCToken = artifacts.require("./UPDCToken.sol");

module.exports = async deployer => {
  console.log('Initial migration');
  deployer.deploy(UPDCToken, process.env.MINT_SAVER, process.env.BURNABLE_STORAGE);
};