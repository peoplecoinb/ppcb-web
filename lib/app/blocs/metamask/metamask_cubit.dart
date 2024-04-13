import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_sdk_metamask/wallet_sdk_metamask.dart';

import '../../constants/constants.dart';

part 'metamask_state.dart';
part 'metamask_endpoint.dart';

class MetamaskCubit extends Cubit<MetamaskState> {
  MetamaskCubit() : super(MetamaskInitial());

  Token get usdt {
    if (flavor == 'dev') {
      return Token.usdtTestNet();
    }
    return Token.usdtMainNet();
  }

  Token get ppcb {
    if (flavor == 'dev') {
      return Token.ppcbTestNet();
    }
    return Token.ppcbMainNet();
  }

  Token get bnb {
    return Token.bnb();
  }

  MetamaskEndpoint get endpoint {
    if (flavor == 'dev') {
      return MetamaskEndpoint.testnet();
    }
    return MetamaskEndpoint.mainnet();
  }

  Future<void> connect() async {
    final WalletConnect connector = WalletConnect(
      uri: endpoint.rpcUrl
    );
    final EthereumWalletConnectProvider walletConnectProvider = EthereumWalletConnectProvider(connector);
    walletConnectProvider.addChain(
        chainId: endpoint.chainId,
        chainName: endpoint.chainName,
        nativeCurrency: bnb.toJson(),
        rpc: <String>[endpoint.rpcUrl],
        explorers: <String>[endpoint.explorers]);
  }
}
