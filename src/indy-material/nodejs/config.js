'use strict';

const config = {

    // Change to your endpoint did's endpoint
    endpointDidEndpoint: process.env.PUBLIC_DID_ENDPOINT,

    // IP Address of the running ledger
    testPoolIp: process.env.TEST_POOL_IP || '127.0.0.1',

    // the port to run the agent server on
    port: process.env.PORT || 3000,

    // Optional: Give your wallet a unique name
    walletName: `${process.env.USERNAME || 'asset'}_wallet`,

    // Optional: Give your pool config a unique name
    poolName: process.env.POOL_NAME || 'pool1',

    // This information is used to issue your "Government ID"
    userInformation: {
        name: process.env.NAME || 'Asset',
        email: process.env.EMAIL || 'drom@deutschebahn.com',
        tax_id: process.env.TAX_ID || '999-55-3005',
        icon_src: process.env.ICON_SRC || 'https://www.psdgraphics.com/wp-content/uploads/2019/12/christmas-squares-pattern-seamless.png',
        username: process.env.USERNAME || 'asset',
        password: process.env.PASSWORD || '2020'
    },

    sessionSecret: "YUYFDISYFSIUOFYERTEWRTEWTWETRNNNMNJHKHFASDdyfiudayDAYIUSDFYASIOFOOASIUDFYEREAHLSKJFE57894502354354HJKAFDDFS"
};

module.exports = config;