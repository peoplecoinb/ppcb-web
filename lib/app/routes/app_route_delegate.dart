import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/nav2/get_router_delegate.dart';

import 'app_navigator_observer.dart';

class AppRouteDelegate extends GetDelegate{
  factory AppRouteDelegate() => _singleton;
  AppRouteDelegate._internal();

  static final AppRouteDelegate _singleton = AppRouteDelegate._internal();
  
  @override
  List<NavigatorObserver>? get navigatorObservers => <NavigatorObserver>[
    AppNavigatorObserver(),
  ];
}
