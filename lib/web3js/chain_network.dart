part of 'web3js.dart';

@JS()
@anonymous
class ChainNetwork {
  external factory ChainNetwork({
    int chainId,
    String chainName,
    List<String> rpcUrls,
    List<String> blockExplorerUrls,
    NativeCurrency nativeCurrency,
  });

  factory ChainNetwork.bnbTestNet() => ChainNetwork(
        chainId: 97,
        chainName: 'Binance Smart Chain Testnet',
        rpcUrls: <String>[
          'https://data-seed-prebsc-2-s1.bnbchain.org:8545/',
          'https://data-seed-prebsc-1-s2.bnbchain.org:8545/',
        ],
        blockExplorerUrls: <String>[
          'https://testnet.bscscan.com',
        ],
        nativeCurrency: NativeCurrency.bnbTest(),
      );

  factory ChainNetwork.bnbMainNet() => ChainNetwork(
        chainId: 56,
        chainName: 'Binance Smart Chain',
        rpcUrls: <String>[
          'https://bsc-dataseed.bnbchain.org/',
        ],
        blockExplorerUrls: <String>[
          'https://bscscan.com',
        ],
        nativeCurrency: NativeCurrency.bnb(),
      );

  external int chainId;
  external String chainName;
  external List<String> rpcUrls;
  external List<String> blockExplorerUrls;
  external NativeCurrency nativeCurrency;
}
