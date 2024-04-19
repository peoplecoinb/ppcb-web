const { Web3AuthNoModal } = require('@web3auth/no-modal');
const { OpenloginAdapter } = require("@web3auth/openlogin-adapter");
const { EthereumPrivateKeyProvider } = require('@web3auth/ethereum-provider');
const { CHAIN_NAMESPACES, WEB3AUTH_NETWORK, WALLET_ADAPTERS } = require('@web3auth/base');
const { WalletConnectV2Adapter } = require('@web3auth/wallet-connect-v2-adapter');

const chainConfig = {
  chainId: "0x1", // Please use 0x1 for Mainnet
  chainNamespace: CHAIN_NAMESPACES.EIP155,
  rpcTarget: "https://rpc.ankr.com/eth",
  displayName: "Ethereum Mainnet",
  blockExplorerUrl: "https://etherscan.io/",
  ticker: "ETH",
  tickerName: "Ethereum",
  logo: "https://images.toruswallet.io/eth.svg",
};

const ethereumPrivateKeyProvider = new EthereumPrivateKeyProvider({
  config: { chainConfig },
});

const web3auth = new Web3AuthNoModal({
  clientId: 'BHoJV3aYHRUoGYd9p9Mxv-TgP42x4tbA6sTgbkIjINzBLXZL4UzHT0LKmxslMxDAGaYDm6vLO_oZF6yvD_Lf-U0',
  web3AuthNetwork: WEB3AUTH_NETWORK.MAINNET,
  chainConfig: chainConfig,
  privateKeyProvider: ethereumPrivateKeyProvider,
})

const wc2Adapter = new WalletConnectV2Adapter({
  adapterSettings: {
    walletConnectInitOptions: {
      projectId: "c36bf582b97350dd8130834ceb358c39",
    }
  },
  chainConfig: chainConfig,
})

web3auth.configureAdapter(wc2Adapter);

web3auth.init().then(async () => {
  await web3auth.connectTo(WALLET_ADAPTERS.WALLET_CONNECT_V2)
});

window.web3auth = web3auth