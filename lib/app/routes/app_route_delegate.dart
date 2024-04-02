import 'package:get/get_navigation/src/nav2/get_router_delegate.dart';

class AppRouteDelegate extends GetDelegate{
  factory AppRouteDelegate() => _singleton;
  AppRouteDelegate._internal();

  static final AppRouteDelegate _singleton = AppRouteDelegate._internal();
}
