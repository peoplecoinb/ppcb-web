@JS('window')
import 'package:js/js.dart';

@JS('FlutterWeb3')

class FlutterWeb3 {
  external factory FlutterWeb3();
  external dynamic get web3;
  external static bool checkWeb3Available();
  external Future<List<String>> getAccounts();
  @anonymous
  external Future<dynamic> swithChain({
    int chainId,
    String chainName,
    List<String> rpcUrls,
    List<String> blockExplorerUrls,
    Map<String, dynamic> nativeCurrency,
  });
}
