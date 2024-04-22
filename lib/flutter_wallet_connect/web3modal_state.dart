part of 'flutter_wallet_connect.dart';

@JS()
@anonymous
class Web3ModalState {
  external factory Web3ModalState({
    bool? loading,
    bool? open,
    int? selectedNetworkId,
  });

  external bool? get loading;
  external bool? get open;
  external int? get selectedNetworkId;
}
