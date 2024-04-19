const { EthereumProvider } = require("@walletconnect/ethereum-provider");

async function main() {
    const provider = await EthereumProvider.init({
        projectId: 'c36bf582b97350dd8130834ceb358c39',
        chains: [1],
        methods: ["eth_signTypedData"],
        showQrModal: true,
    });
    
    await provider.connect();

    provider.enable().then((accounts) => {
        console.log(accounts);
    }).catch((error) => {
        console.error(error);
    });
}

main();