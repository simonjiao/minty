require("@nomiclabs/hardhat-waffle");

/**
 * @type import('hardhat/config').HardhatUserConfig
 */
module.exports = {
    solidity: "0.7.3",

    defaultNetwork: 'findora',
    networks: {
        hardhat: {},
        localhost: {},
        findora:{
            url: 'https://dev-evm.dev.findora.org:8545',
            accounts: ['Your private key'],
        }
    }
};

