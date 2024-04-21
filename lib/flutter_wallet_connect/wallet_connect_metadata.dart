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

  external String get name;
  external String get description;
  external String get url;
  external List<String> get icons;
}
