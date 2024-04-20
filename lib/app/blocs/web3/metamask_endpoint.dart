// part of 'web3_cubit.dart';

// class MetamaskEndpoint {

//   MetamaskEndpoint.testnet():
//     chainName = 'Binance Smart Chain Testnet',
//     chainId = 97,
//     rpcUrl = 'https://data-seed-prebsc-1-s1.bnbchain.org:8545/',
//     explorers = 'https://testnet.bscscan.com';

//   MetamaskEndpoint.mainnet():
//     chainName = 'Binance Smart Chain',
//     chainId = 56,
//     rpcUrl = 'https://bsc-dataseed.bnbchain.org/',
//     explorers = 'https://bscscan.com';

//   final String chainName;
//   final int chainId;
//   final String rpcUrl;
//   final String explorers;
// }

// class Token{

//   Token.bnb():
//     name = 'Binance Coin',
//     symbol = 'BNB',
//     decimals = 18,
//     address = null;

//   Token.ppcbTestNet():
//     name = 'People Coin',
//     symbol = 'PPCB',
//     decimals = 18,
//     address = '0xb521E9436142aCf59b1944A323fde97289C21642';

//   Token.ppcbMainNet():
//     name = 'People Coin',
//     symbol = 'PPCB',
//     decimals = 18,
//     address = '0xa5aFeBa0018a6fDa96712126ce346C007F000B26';

//   Token.usdtTestNet():
//     name = 'Tether USD',
//     symbol = 'USDT',
//     decimals = 18,
//     address = '0x337610d27c682E347C9cD60BD4b3b107C9d34dDd';

//   Token.usdtMainNet():
//     name = 'Tether USD',
//     symbol = 'USDT',
//     decimals = 18,
//     address = '0x55d398326f99059fF775485246999027B3197955';

//   final String name;
//   final String symbol;
//   final int decimals;
//   final String? address;
  
//   Map<String, dynamic> toJson() => <String, dynamic>{
//     'name': name,
//     'symbol': symbol,
//     'decimals': decimals,
//     'address': address
//   }..removeWhere((String key, dynamic value) => value == null);
// }
