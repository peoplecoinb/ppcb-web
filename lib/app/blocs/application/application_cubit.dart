import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../ui/widgets/dialog/app_dialog.dart';

part 'application_state.dart';
part 'application_action_helper.dart';

class ApplicationCubit extends Cubit<ApplicationState> {
  ApplicationCubit() : super(const ApplicationState());

  final _ApplicationActionHelper _helper = _ApplicationActionHelper();

  Future<bool?> Function(BuildContext context,
      {String title,
      String? des,
      IconData? icon,
      String? keyCancel,
      String? keyConfirm,
      bool isFailed}) get confirm => _helper.confirm;

  Future<void> Function(BuildContext context, {String title, String? des, IconData? icon, bool isFailed})
      get notification => _helper.notification;

  // Future<T?> Function<T>(BuildContext context, WidgetBuilder builder, {bool isDismissible}) get showBottomSheet => _helper.showBottomSheet;

  void Function(BuildContext context, String message, {bool isError, bool isIcon}) get showSnackbar =>
      _helper.showSnackbar;

  void Function() get unFocus => _helper.unFocus;

  void Function(BuildContext context, FocusNode node) get focus => _helper.focus;

  void setLoading([bool isLoading = true]) {
    if (isLoading) {
      emit(state.copyWith(loading: ApplicationLoading.loading));
    } else {
      emit(state.copyWith(loading: ApplicationLoading.completed));
    }
  }

  bool checkDuplicatePage(BuildContext context, String page, {Map<String, dynamic>? queryParameters}) {
    final Uri currentPageUri = Uri(path: ModalRoute.of(context)!.settings.name, queryParameters: ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?);
    final Uri directPageUri = Uri(path: page, queryParameters: queryParameters ?? <String, dynamic>{});
    return currentPageUri.toString() == directPageUri.toString();
  }

  // Future<void> loadConfig() async {
  //   final NetworkState<ConfigModel> networkState = await configRepository.getConfig();
  //   if(networkState.isSuccess){
  //     emit(state.copyWith(config: networkState.data));
  //     AppPrefs.config = networkState.data;
  //   }
  // }
  //
  // Future<void> loadStateConfig() async {
  //   setLoading();
  //   final NetworkState<List<StateModel>> networkState = await configRepository.getStates();
  //   setLoading(false);
  //   emit(state.copyWith(states: networkState.data));
  // }
}
