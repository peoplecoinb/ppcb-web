import { createWeb3Modal, defaultConfig, Web3Modal } from '@web3modal/ethers'

class FlutterWalletConnect {
  public modal: Web3Modal;

  constructor(options: FlutterWalletConnectParams) {
    const etherConfig = defaultConfig({
      metadata: options.metadata,
    });
    this.modal = createWeb3Modal(
      {
        ethersConfig: etherConfig,
        chains: options.chains,
        projectId: options.projectId,
      }
    );
    this.modal.getAddress();
  }

  
}

type FlutterWalletConnectParams = {
  projectId : string, 
  chains: ChainNetwork[],
  metadata: Metadata,
}

/**
 * Metadata
 * @typedef {Object} Metadata
 * @property {string} name
 * @@property {string} description
 * @property {string} url
 * @property {string[]} icons
 * @example
 * {
 * name: 'My DApp',
 * description: 'My DApp description',
 * url: 'https://my-dapp.com',
 * icons: ['https://my-dapp.com/favicon.ico']
 * }
*/

type Metadata = {
  name: string,
  description: string,
  url: string,
  icons: string[]
}

/**
 * ChainNetwork
 * @typedef {Object} ChainNetwork
 * @property {number} chainId
 * @property {string} name
 * @property {string} currency
 * @property {string} explorerUrl
 * @property {string} rpcUrl
 * @example
 * {
 *  chainId: 1,
 * name: 'Ethereum Mainnet',
 * currency: 'ETH',
 * explorerUrl: 'https://etherscan.io',
 * rpcUrl: 'https://mainnet.infura.io/v3/your_project_id'
 * }
 */

type ChainNetwork = {
  chainId: number,
  name: string,
  currency: string,
  explorerUrl: string,
  rpcUrl: string,
}


declare global {
  interface Window {
    FlutterWalletConnect: FlutterWalletConnect
  }
}