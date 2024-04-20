// Import các modules cần thiết từ thư viện '@web3modal/ethers'
const { createWeb3Modal, defaultConfig,  } = require('@web3modal/ethers/react');

// 1. Lấy projectId tại https://cloud.walletconnect.com
const projectId = 'c36bf582b97350dd8130834ceb358c39';

// 2. Định nghĩa chain cho mainnet
const mainnet = {
  chainId: 1,
  name: 'Ethereum',
  currency: 'ETH',
  explorerUrl: 'https://etherscan.io',
  rpcUrl: 'https://cloudflare-eth.com'
};

// 3. Tạo đối tượng metadata cho ứng dụng của bạn
const metadata = {
    name: 'Web3Modal',
    description: 'Web3Modal Example',
    url: 'https://web3modal.com',
    icons: ['https://avatars.githubusercontent.com/u/37784886']
};

// 4. Tạo config cho Ethers
const ethersConfig = defaultConfig({
  /*Required*/
  metadata,

  /*Optional*/
  enableEIP6963: true, // mặc định là true
});

// 5. Tạo một instance của Web3Modal
const modal = createWeb3Modal({
  ethersConfig,
  chains: [mainnet],
  projectId,
  enableAnalytics: true, // Optional - mặc định là cấu hình từ Cloud của bạn
  enableOnramp: true // Optional - mặc định là false
});

window.walletConnect = modal;

window.walletConnect.open();