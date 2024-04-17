function FlutterWeb3() {
    this.web3 = new Web3(window.ethereum);

    this.getAccounts = async function () {
        await window.ethereum.request({ method: 'eth_requestAccounts' });
        return this.web3.eth.getAccounts();
    }

    this.swithChain = async function ({
        chainId,
        chainName,
        rpcUrls,
        blockExplorerUrls,
        nativeCurrency,
    }) {
        try {
            const res = await window.ethereum.request({
                method: 'wallet_switchEthereumChain',
                params: [
                    {
                        chainId: this.web3.utils.toHex(chainId)
                    }
                ]
            });
            return res;
        } catch (err) {
            if (err.code == 4902) {
                window.ethereum.request({
                    method: 'wallet_addEthereumChain',
                    params: [
                        {
                            chainId: this.web3.utils.toHex(chainId),
                            chainName,
                            rpcUrls,
                            blockExplorerUrls,
                            nativeCurrency,
                        }
                    ]
                })
            }
            return err;
        }
    }
}

FlutterWeb3.checkWeb3Available = function () {
    return window.ethereum !== undefined;
}

window.FlutterWeb3 = FlutterWeb3;