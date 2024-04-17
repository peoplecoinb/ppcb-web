import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../constants/constants.dart';
import 'web3js.dart';
import 'package:js/js_util.dart';

part 'web3_state.dart';
part 'web3_endpoint.dart';

class MetamaskCubit extends Cubit<MetamaskState> {
  MetamaskCubit() : super(const MetamaskInitial());

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

  MetamaskEndpoint get endpoint {
    if (flavor == 'dev') {
      return MetamaskEndpoint.testnet();
    }
    return MetamaskEndpoint.mainnet();
  }

  Future<void> connect() async {
    FlutterWeb3().swithChain(
      endpoint.chainId,
      endpoint.chainName,
      endpoint.rpcUrls,
      endpoint.explorers,
      endpoint.nativeToken.toJson(),
    );
  }

  Future<void> getAccount() async {}
}
