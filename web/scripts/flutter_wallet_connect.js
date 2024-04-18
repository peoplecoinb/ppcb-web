const { createWeb3Modal, defaultConfig } = require('@web3modal/ethers');

function FlutterWalletConnect(options) {
  const etherConfig = defaultConfig({
    metadata: options.metadata,
  });
  
  this.modal = createWeb3Modal({
    ethersConfig: etherConfig,
    chains: options.chains,
    projectId: options.projectId,
  });
  
}

window.FlutterWalletConnect = FlutterWalletConnect;