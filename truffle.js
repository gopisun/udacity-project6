const HDWalletProvider = require('truffle-hdwallet-provider');
const infuraKey =  "be9862a50e5f4a11a8a55574ba2768db";
const mnemonic = "caught rubber deposit nephew lunch concert guide club nut kiwi alcohol stairs";

module.exports = {
  networks: {
    develop: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "*" // Match any network id
    },

    rinkeby: {
      provider: () => new HDWalletProvider(mnemonic, `https://rinkeby.infura.io/v3/${infuraKey}`),
        network_id: 4,       // rinkeby's id
        gas: 4500000,        // rinkeby has a lower block limit than mainnet
        gasPrice: 10000000000
    },
  }
};