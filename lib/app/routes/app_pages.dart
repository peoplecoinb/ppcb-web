import 'package:get/get.dart';

import '../ui/ui.dart';
import 'app_routes.dart';

class AppPages{
  AppPages._();

  static List<GetPage<dynamic>> pages = <GetPage<dynamic>>[
    GetPage<dynamic>(
      name: Routes.home.route,
      page: () => const HomeScreen(),
    ),
    GetPage<dynamic>(
      name: Routes.account.route,
      page: () => const AccountScreen(),
    ),
    GetPage<dynamic>(
      name: Routes.unknown.route,
      page: () => const UnknownScreen(),
    ),
  ];
}
