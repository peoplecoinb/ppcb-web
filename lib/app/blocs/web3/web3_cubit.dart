import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:js/js_util.dart';
// import 'package:flutter_web3/flutter_web3.dart';

import '../../../flutter_wallet_connect/flutter_wallet_connect.dart';

part 'web3_state.dart';

class Web3Cubit extends Cubit<Web3State> {
  Web3Cubit() : super(const Web3Initial()) {
    walletConnect = FlutterWalletConnect(FlutterWalletConnectOptions(
      projectId: 'c36bf582b97350dd8130834ceb358c39',
      metadata: WalletConnectMetadata(
        name: 'PPCB',
        description: 'PPCB',
        url: 'https://ppcb.io',
        icons: <String>['https://avatars.githubusercontent.com/u/37784886'],
      ),
      chains: <NetworkChain>[NetworkChain.bscTest()],
    ));
    walletConnect.subscribeWalletInfo(allowInterop(onWalletInfo));
  }
  late final FlutterWalletConnect walletConnect;

  Future<void> connect() async {
    await promiseToFuture(walletConnect.connect());
  }

  Future<void> getAccount() async {
    final String? accounts = await promiseToFuture<String?>(walletConnect.getAccounts());
    if (accounts != null) {
      emit(Web3Connected(account: accounts));
    }
  }

  void onWalletInfo(ConnectWalletInfo? walletInfo) {
    if(walletInfo != null) {
      getAccount();
    }
  }
}
