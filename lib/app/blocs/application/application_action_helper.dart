part of 'application_cubit.dart';

class _ApplicationActionHelper {
  _ApplicationActionHelper();

  Future<bool?> confirm(BuildContext context,
      {String title = 'alert',
      String? des,
      IconData? icon,
      String? keyCancel,
      String? keyConfirm,
      bool isFailed = true}) async {
    final bool? _ = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) => AppDialog(
        title: title,
        icon: icon ?? Icons.notification_important_outlined,
        description: des ?? '',
        isFailed: isFailed,
        showTwoBtn: true,
        keyCancel: keyCancel,
        keyConfirm: keyConfirm,
      ),
    );
    return _;
  }

  Future<void> notification(
    BuildContext context, {
    String title = 'notification',
    String? des,
    IconData? icon,
    bool isFailed = true,
  }) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) => AppDialog(
        title: title,
        icon: icon ?? Icons.notification_important_outlined,
        description: des ?? '',
        isFailed: isFailed,
      ),
    );
  }

  // Future<T?> showBottomSheet<T>(
  //   BuildContext context,
  //   WidgetBuilder builder, {
  //   bool isDismissible = true,
  // }) {
  //   return showMaterialModalBottomSheet<T>(
  //     context: context,
  //     builder: builder,
  //     barrierColor: Colors.black12,
  //     backgroundColor: Colors.transparent,
  //     isDismissible: isDismissible,
  //     useRootNavigator: true,
  //   );
  // }

  void showSnackbar(BuildContext context, String message, {bool isError = false, bool isIcon = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(milliseconds: 1500),
        backgroundColor: isError ? Colors.red : Colors.green,
      ),
    );
  }

  void unFocus() {
    WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: <SystemUiOverlay>[]);
  }

  void focus(BuildContext context, FocusNode node) {
    FocusScope.of(context).requestFocus(node);
  }
}
