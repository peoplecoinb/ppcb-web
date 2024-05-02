import 'package:get/get.dart';

import '../ui/ui.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static List<GetPage<dynamic>> pages = <GetPage<dynamic>>[
    GetPage<dynamic>(
      name: Routes.home.route,
      page: () => const NavigationScreen(
        child: HomeScreen(),
      ),
    ),
    GetPage<dynamic>(
      name: Routes.whitePaper.route,
      page: () => const NavigationScreen(
        child: WhitePaperScreen(),
      ),
    ),
    GetPage<dynamic>(
      name: Routes.unknown.route,
      page: () => const UnknownScreen(),
    ),
  ];
}
