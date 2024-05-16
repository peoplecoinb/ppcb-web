import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../ui/ui.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static GoRouter routes = GoRouter(
    routes: <RouteBase>[
      ShellRoute(
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return NavigationScreen(child: child);
        },
        routes: <GoRoute>[
          GoRoute(
            path: Routes.home.route,
            builder: (BuildContext context, GoRouterState state) => const HomeScreen(),
          ),
          GoRoute(
            path: Routes.whitePaper.route,
            builder: (BuildContext context, GoRouterState state) => const WhitePaperScreen(),
          ),
          GoRoute(
            path: Routes.unknown.route,
            builder: (BuildContext context, GoRouterState state) => const UnknownScreen(),
          ),
        ],
      )
    ],
  );
}
