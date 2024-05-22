
// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';

import '../../../../../generated/l10n.dart';
import '../../../../blocs/application/application_cubit.dart';
import '../../../../blocs/web3/web3_cubit.dart';

part 'pre_sale_state.dart';

class PreSaleCubit extends Cubit<PreSaleState> {
  PreSaleCubit() : super(const PreSaleInitial()) {
    if (web3Cubit.state is Web3Connected) {
      emit(PreSaleConnected(web3Cubit.state.account));
    } else {
      emit(const PreSaleInitial());
    }
  }
  Web3Cubit get web3Cubit => GetIt.I<Web3Cubit>();

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

  Future<void> buy(BuildContext context) async {
    if (web3Cubit.walletConnect.getState().selectedNetworkId != web3Cubit.chain.chainId) {
      final bool isSwitchNetworkSuccess = await switchNetwork();
      if (isSwitchNetworkSuccess) {
        GetIt.I<ApplicationCubit>().notification(
          context,
          title: S.current.notification,
          des: S.current.presale_later,
          isFailed: false,
        );
      }
    } else {
      GetIt.I<ApplicationCubit>().notification(
        context,
        title: S.current.notification,
        des: S.current.presale_later,
        isFailed: false,
      );
    }
  }
}
