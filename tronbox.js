require('dotenv').config()

module.exports = {
  networks: {
    mainnet: {
      privateKey: process.env.PRIVATE_KEY_MAINNET,
      userFeePercentage: 100,
      feeLimit: 1e8,
      fullHost: "https://api.trongrid.io",
      network_id: "1"
    },
    shasta: {
      privateKey: process.env.PRIVATE_KEY_SHASTA,
      userFeePercentage: 30,
      feeLimit: 1e8,
      fullHost: "https://api.shasta.trongrid.io",
      network_id: "2"
    },
    development: {
      // For trontools/quickstart docker image
      privateKey: process.env.PRIVATE_KEY_DEVELOPMENT,
      userFeePercentage: 30,
      feeLimit: 1e8,
      fullHost: 'http://127.0.0.1:' + process.env.DEVELOPMENT_PORT,
      network_id: "9"
    }
  }
}