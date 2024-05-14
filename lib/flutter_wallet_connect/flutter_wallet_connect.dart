// ignore_for_file: library_private_types_in_public_api

@JS('window')
import 'package:js/js.dart';
import 'package:js/js_util.dart';

part 'wallet_connect_metadata.dart';
part 'network_chain.dart';
part 'connect_wallet_info.dart';
part 'ether_store_state.dart';
part 'provider.dart';
part 'web3modal_state.dart';

@JS('FlutterWalletConnect')
class _FlutterWalletConnect {
  external _FlutterWalletConnect(FlutterWalletConnectOptions options);
  external dynamic get web3Modal;
  external Future<void> connect();
  external Future<void> disconnect();
  external int getChainId();
  external bool isConnected();
  external Future<String?> getAccounts();
  external Future<void> switchNetwork(int chainId);
  external Future<void> closeModal();

  // view: 'Account' | 'Connect' | 'Networks' | 'ApproveTransaction' | 'OnRampProviders';
  external Future<void> openModal(String view);
  external Web3ModalState getState();
  external void subscribeWalletInfo(void Function(ConnectWalletInfo?) callback);
  external void subscribeProvider(void Function(EthersStoreState?) callback);
  external void subscribeState(void Function(Web3ModalState?) callback);
}

class FlutterWalletConnect implements _FlutterWalletConnect {
  FlutterWalletConnect(FlutterWalletConnectOptions options) : instance = _FlutterWalletConnect(options);
  final _FlutterWalletConnect instance;

  @override
  Future<String?> getAccounts() {
    return promiseToFuture<String?>(instance.getAccounts());
  }

  @override
  void subscribeWalletInfo(void Function(ConnectWalletInfo?) callback) {
    instance.subscribeWalletInfo(allowInterop(callback));
  }

  @override
  void subscribeProvider(void Function(EthersStoreState?) callback) {
    instance.subscribeProvider(allowInterop(callback));
  }

  @override
  void subscribeState(void Function(Web3ModalState?) callback) {
    instance.subscribeState(allowInterop(callback));
  }

  @override
  dynamic get web3Modal => instance.web3Modal;

  @override
  Future<void> connect() {
    return promiseToFuture<void>(instance.connect());
  }

  @override
  Future<void> disconnect() {
    return promiseToFuture<void>(instance.disconnect());
  }

  @override
  bool isConnected() {
    return instance.isConnected();
  }

  @override
  int getChainId() {
    return instance.getChainId();
  }

  @override
  Future<void> switchNetwork(int chainId) {
    return promiseToFuture<void>(instance.switchNetwork(chainId));
  }

  @override
  Future<void> closeModal() {
    return promiseToFuture<void>(instance.closeModal());
  }

  // view: 'Account' | 'Connect' | 'Networks' | 'ApproveTransaction' | 'OnRampProviders';
  @override
  Future<void> openModal(String view) {
    return promiseToFuture<void>(instance.openModal(view));
  }

  @override
  Web3ModalState getState() {
    return instance.getState();
  }
}

@JS()
@anonymous
class FlutterWalletConnectOptions {
  external factory FlutterWalletConnectOptions({
    required String projectId,
    required WalletConnectMetadata metadata,
    required List<NetworkChain> chains,
  });

  external String get projectId;
  external WalletConnectMetadata get metadata;
  external List<NetworkChain> get chains;
}
