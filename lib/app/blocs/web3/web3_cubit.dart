import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '/web3js/web3js.dart';
import 'package:js/js_util.dart';
import '../application/application_cubit.dart';
import '../../constants/constants.dart';

part 'web3_state.dart';

class MetamaskCubit extends Cubit<MetamaskState> {
  MetamaskCubit() : super(const MetamaskInitial());

  NativeCurrency get usdt {
    if (flavor == 'dev') {
      return NativeCurrency.usdtTestNet();
    }
    return NativeCurrency.usdtMainNet();
  }

  NativeCurrency get ppcb {
    if (flavor == 'dev') {
      return NativeCurrency.ppcbTestNet();
    }
    return NativeCurrency.ppcbMainNet();
  }

  Future<void> connect() async {
    connectOnPC();
  }

  Future<void> connectOnPC() async {
    if(FlutterWeb3.checkWeb3Available()){
      await FlutterWeb3().switchChain(ChainNetwork.bnbTestNet());
      getAccount();
    }else{
      Get.find<ApplicationCubit>().notification(title:'notification'.tr, des: 'meta_mask_connect_error',);
    }
  }

  Future<void> getAccount() async {
    final List<dynamic> accounts = await promiseToFuture(FlutterWeb3().getAccounts());
    if (accounts.isNotEmpty) {
      emit(MetamaskConnected(account: accounts.first as String));
    } else {
      emit(const MetamaskInitial());
    }
  }
}
