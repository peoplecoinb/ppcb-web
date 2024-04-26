// ignore_for_file: always_specify_types, strict_raw_type

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../blocs/application/application_cubit.dart';

class AppNavigatorObserver extends NavigatorObserver{
  @override
  void didPop(Route route, Route? previousRoute) {
    // Get.find<ApplicationCubit>().videoController.pauseVideo();
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    // Get.find<ApplicationCubit>().videoController.pauseVideo();
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    // Get.find<ApplicationCubit>().videoController.pauseVideo();
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    // Get.find<ApplicationCubit>().videoController.pauseVideo();
  }
}
