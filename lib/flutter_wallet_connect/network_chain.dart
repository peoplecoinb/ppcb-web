part of 'flutter_wallet_connect.dart';

@JS()
@anonymous
class NetworkChain {

  external factory NetworkChain({
    required int chainId,
    required String name,
    required String currency,
    required String explorerUrl,
    required String rpcUrl,
  });
  
  factory NetworkChain.eth() => NetworkChain(
    chainId: 1,
    name: 'Ethereum',
    currency: 'ETH',
    explorerUrl: 'https://etherscan.io',
    rpcUrl: 'https://mainnet.infura.io/v3/your_infura_id',
  );

  factory NetworkChain.bsc() => NetworkChain(
    chainId: 56,
    name: 'Binance Smart Chain',
    currency: 'BNB',
    explorerUrl: 'https://bscscan.com',
    rpcUrl: 'https://bsc-dataseed.binance.org',
  );

  factory NetworkChain.bscTest() => NetworkChain(
    chainId: 97,
    name: 'Binance Smart Chain Testnet',
    currency: 'tBNB',
    explorerUrl: 'https://testnet.bscscan.com',
    rpcUrl: 'https://data-seed-prebsc-1-s1.binance.org:8545',
  );

  external int get chainId;
  external String get name;
  external String get currency;
  external String get explorerUrl;
  external String get rpcUrl;
}
