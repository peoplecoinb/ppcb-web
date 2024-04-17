part of 'web3js.dart';

@JS()
@anonymous
class NativeCurrency {
  external factory NativeCurrency({
    String name,
    String symbol,
    int decimals,
    String address,
  });

  factory NativeCurrency.bnbTest() => NativeCurrency(
        name: 'Binance Coin',
        symbol: 'tBNB',
        decimals: 18,
      );

  factory NativeCurrency.bnb() => NativeCurrency(
        name: 'Binance Coin',
        symbol: 'BNB',
        decimals: 18,
      );

  factory NativeCurrency.ppcbTestNet() => NativeCurrency(
        name: 'People Coin',
        symbol: 'PPCB',
        decimals: 18,
        address: '0xb521E9436142aCf59b1944A323fde97289C21642',
      );

  factory NativeCurrency.ppcbMainNet() => NativeCurrency(
        name: 'People Coin',
        symbol: 'PPCB',
        decimals: 18,
        address: '0xa5aFeBa0018a6fDa96712126ce346C007F000B26',
      );

  factory NativeCurrency.usdtTestNet() => NativeCurrency(
        name: 'Tether USD',
        symbol: 'USDT',
        decimals: 18,
        address: '0x337610d27c682E347C9cD60BD4b3b107C9d34dDd',
      );

  factory NativeCurrency.usdtMainNet() => NativeCurrency(
        name: 'Tether USD',
        symbol: 'USDT',
        decimals: 18,
        address: '0x55d398326f99059fF775485246999027B3197955',
      );

  external String name;
  external String symbol;
  external int decimals;
  external String address;
}
