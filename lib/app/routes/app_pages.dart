import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

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

  static GoRouter routes = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: Routes.home.route,
        builder: (BuildContext context, GoRouterState state) => const NavigationScreen(
          child: HomeScreen(),
        ),
      ),
      GoRoute(
        path: Routes.whitePaper.route,
        builder: (BuildContext context, GoRouterState state) => const NavigationScreen(
          child: WhitePaperScreen(),
        ),
      ),
      GoRoute(
        path: Routes.unknown.route,
        builder: (BuildContext context, GoRouterState state) => const UnknownScreen(),
      ),
    ],
  );
}
