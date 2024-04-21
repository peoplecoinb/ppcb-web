part of 'flutter_wallet_connect.dart';

@JS()
@anonymous
class ConnectWalletInfo {
  external factory ConnectWalletInfo({
    String? name,
    String? icon,
  });

  external String? get name;
  external String? get icon;
}
