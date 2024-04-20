const { createWeb3Modal, defaultConfig} = require('@web3modal/ethers');

FlutterWalletConnect = function ({projectId, metadata, chains}){
    const config = defaultConfig({
        metadata,
    });

    this.web3Modal = createWeb3Modal({
        projectId: projectId,
        ethersConfig: config,
        chains: chains,
    });

    this.connect = async function(){
        return this.web3Modal.open();
    }

    this.disconnect = function(){
        return this.web3Modal.disconnect();
    }

    this.getAccounts = async function(){
        return this.web3Modal.getAddress();
    }

    this.isConnected = function(){
        return this.web3Modal.getIsConnected();
    }

    this.subscribeWalletInfo = function(callback){
        console.log('subscribeWalletInfo', callback);
        this.web3Modal.subscribeWalletInfo(callback);
    }
}

window.FlutterWalletConnect = FlutterWalletConnect;