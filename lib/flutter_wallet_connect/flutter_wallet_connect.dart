@JS('window')
import 'package:js/js.dart';

part 'wallet_connect_metadata.dart';
part 'network_chain.dart';
part 'connect_wallet_info.dart';

@JS('FlutterWalletConnect')
class FlutterWalletConnect {
  external FlutterWalletConnect(FlutterWalletConnectOptions options);
  external dynamic web3Modal;
  external Future<void> connect();
  external Future<void> disconnect();
  external bool isConnected();
  external Future<List<String>> getAccounts();
  external void subscribeWalletInfo(void Function(ConnectWalletInfo?) callback);
}

@JS()
@anonymous
class FlutterWalletConnectOptions {
  external factory FlutterWalletConnectOptions({
    required String projectId,
    required WalletConnectMetadata metadata,
    required List<NetworkChain> chains,
  });

  external String projectId;
  external WalletConnectMetadata metadata;
  external List<NetworkChain> chains;
} 
