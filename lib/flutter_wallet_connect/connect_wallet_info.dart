part of 'flutter_wallet_connect.dart';

@JS()
@anonymous
class ConnectWalletInfo {
  external factory ConnectWalletInfo({
    String? name,
    String? icon,
  });

  external String? name;
  external String? icon;
}
