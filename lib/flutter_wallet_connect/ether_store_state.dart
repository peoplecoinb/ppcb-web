// ignore_for_file: always_specify_types

part of 'flutter_wallet_connect.dart';

@JS()
@anonymous
class EthersStoreState {

  external factory EthersStoreState({
    Provider? provider,
    String? providerType,
    String? address,
    int? chainId,
    dynamic error,
    bool? isConnected,
  });

  external Provider? get provider;
  external String? get providerType;
  external String? get address;
  external int? get chainId;
  external dynamic get error;
  external bool? get isConnected;
}
