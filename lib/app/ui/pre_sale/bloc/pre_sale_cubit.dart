
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get/get.dart';

import '../../../blocs/application/application_cubit.dart';
import '../../../blocs/web3/web3_cubit.dart';

part 'pre_sale_state.dart';

class PreSaleCubit extends Cubit<PreSaleState> {
  PreSaleCubit() : super(const PreSaleInitial()) {
    if (web3Cubit.state is Web3Connected) {
      emit(PreSaleConnected(web3Cubit.state.account));
    } else {
      emit(const PreSaleInitial());
    }
  }
  Web3Cubit get web3Cubit => Get.find<Web3Cubit>();

  Future<void> connect() async {
    await web3Cubit.connect();
  }

  Future<bool> switchNetwork() async {
    try {
      await web3Cubit.walletConnect.switchNetwork(web3Cubit.chain.chainId);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<void> buy() async {
    if (web3Cubit.walletConnect.getState().selectedNetworkId != web3Cubit.chain.chainId) {
      final bool isSwitchNetworkSuccess = await switchNetwork();
      if (isSwitchNetworkSuccess) {
        Get.find<ApplicationCubit>().notification(
          title: 'notification'.tr,
          des: 'presale_later'.tr,
          isFailed: false,
        );
      }
    } else {
      Get.find<ApplicationCubit>().notification(
        title: 'notification'.tr,
        des: 'presale_later'.tr,
        isFailed: false,
      );
    }
  }
}
