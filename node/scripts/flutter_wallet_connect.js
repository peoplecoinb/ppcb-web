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

    this.getChainId = function(){
        return this.web3Modal.getChainId();
    }

    this.isConnected = function(){
        return this.web3Modal.getIsConnected();
    }

    this.subscribeWalletInfo = function(callback){
        this.web3Modal.subscribeWalletInfo(callback);
    }

    this.subscribeProvider = function(callback){
        this.web3Modal.subscribeProvider(callback);
    }

    this.subscribeState = function(callback){
        this.web3Modal.subscribeState(callback);
    }

    this.switchNetwork = async function(chainId){
        return this.web3Modal.switchNetwork(chainId);
    }

    this.closeModal = function(){
        return this.web3Modal.close();
    }
}

window.FlutterWalletConnect = FlutterWalletConnect;