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
      name: Routes.whitePaper.route,
      page: () => const WhitePaperScreen(),
    ),
    GetPage<dynamic>(
      name: Routes.roadMap.route,
      page: () => const RoadMapScreen(),
    ),
    GetPage<dynamic>(
      name: Routes.fund.route,
      page: () => const FundScreen(),
    ),
    GetPage<dynamic>(
      name: Routes.team.route,
      page: () => const TeamScreen(),
    ),
    GetPage<dynamic>(
      name: Routes.team.route,
      page: () => const TeamScreen(),
    ),
    GetPage<dynamic>(
      name: Routes.preSale.route,
      page: () => const PreSaleScreen(),
    ),
        GetPage<dynamic>(
      name: Routes.more.route,
      page: () => const MoreScreen(),
    ),
    GetPage<dynamic>(
      name: Routes.unknown.route,
      page: () => const UnknownScreen(),
    ),
  ];
}
