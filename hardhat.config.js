require("@nomiclabs/hardhat-waffle");

const privateKey = "d3f0e5c5ff85db628d977d62267a8528d84ed982b95bdb73ddfad9341f2fc1bc"

module.exports = {
  networks: {
    hardhat:{
      chainId: 1337
    },
    mumbai: {
      url: 'https://polygon-mumbai.g.alchemy.com/v2/2dLxHREgZzRM_L_8Vnix2yAp3WY3KfCn',
      accounts:[privateKey]
    },
    mainnet: {
      url: 'https://polygon-mainnet.g.alchemy.com/v2/7XtgtKNr91t59luks1-4egcLMDH03U--',
      accounts:[privateKey]
    }
  },
  solidity: "0.8.4",
};
