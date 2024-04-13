import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web3/flutter_web3.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';
import '../application/application_cubit.dart';

part 'metamask_state.dart';
part 'metamask_endpoint.dart';

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
    if (ethereum?.isConnected() ?? false) {
      await ethereum!.walletAddChain(
        chainId: endpoint.chainId,
        chainName: endpoint.chainName,
        nativeCurrency: CurrencyParams(
          name: bnb.name,
          symbol: bnb.symbol,
          decimals: bnb.decimals,
        ),
        rpcUrls: <String>[
          endpoint.rpcUrl,
        ],
      );
      getAccount();
    }
    else {
      Get.find<ApplicationCubit>().notification(title:'notification'.tr, des: 'meta_mask_connect_error',);
    }
  }

  Future<void> getAccount() async {
    final String account = (await ethereum!.requestAccount()).first;
    if (account != null) {
      emit(MetamaskConnected(account: account));
    }
  }
}
