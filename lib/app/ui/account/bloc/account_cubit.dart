import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get/get.dart';

import '../../../blocs/application/application_cubit.dart';
import '../../../resources/resources.dart';

part 'account_state.dart';

class AccountCubit extends Cubit<AccountState> {
  AccountCubit() : super(const AccountInitial());
  final ApplicationCubit applicationCubit = Get.find<ApplicationCubit>();

  Future<void> postData(Map<String, dynamic> data) async {
    applicationCubit.setLoading();
    try {
      final NetworkState<dynamic> response = await AuthRepository().test(data);
      emit(AccountResult(data: response.data));
    } finally {
      applicationCubit.setLoading(false);
    }
  }
}
