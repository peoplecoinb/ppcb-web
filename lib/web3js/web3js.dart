@JS('window')

import 'package:js/js.dart';
part 'native_currency.dart';
part 'chain_network.dart';

@JS('FlutterWeb3')
class FlutterWeb3 {
  external factory FlutterWeb3();
  external dynamic get web3;
  external static bool checkWeb3Available();
  external Future<List<dynamic>> getAccounts();
  external Future<dynamic> switchChain(ChainNetwork  chainNetwork);
}
