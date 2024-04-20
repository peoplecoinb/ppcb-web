part of 'flutter_wallet_connect.dart';

@JS()
@anonymous
class WalletConnectMetadata {

  external factory WalletConnectMetadata({
    required String name,
    required String description,
    required String url,
    required List<String> icons,
  });

  external String name;
  external String description;
  external String url;
  external List<String> icons;
}
