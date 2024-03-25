// import 'package:flutter/material.dart';
//
// import 'app_route_path.dart';
// import 'app_routes.dart';
//
// class AppRouteInformationParser extends RouteInformationParser<AppRoutePath> {
//
//   @override
//   Future<AppRoutePath> parseRouteInformation(RouteInformation routeInformation) async {
//     final Uri uri = routeInformation.uri;
//     if (uri.pathSegments.isEmpty) {
//       return AppRoutePath.home();
//     }
//     if (uri.pathSegments.length == 1) {
//       final String pathName = uri.pathSegments.elementAt(0);
//       if(Routes.values.map((Routes e) => e.route).contains('/$pathName')){
//         return AppRoutePath.otherPage('/$pathName');
//       }
//     }
//     return AppRoutePath.unknown();
//   }
//
//   // @override
//   // RouteInformation restoreRouteInformation(AppRoutePath configuration) {
//   //   if(configuration.unKnown){
//   //     return RouteInformation(uri: Uri.parse(Routes.unknown.route));
//   //   }
//   //   return RouteInformation(uri: Uri.parse('${configuration.path}' ?? '/'));
//   // }
// }

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/parse_route.dart';

import 'app_routes.dart';

class AppRouteInformationParser extends GetInformationParser {
  AppRouteInformationParser({required super.initialRoute});

  @override
  SynchronousFuture<GetNavConfig> parseRouteInformation(
    RouteInformation routeInformation,
  ) {
    final Uri uri = routeInformation.uri;
    String location = uri.toString();
    if (location == '/') {
      //check if there is a corresponding page
      //if not, relocate to initialRoute
      if (!Get.routeTree.routes.any((GetPage<dynamic> element) => element.name == '/')) {
        location = initialRoute;
      }
    } else if (location.isEmpty) {
      location = initialRoute;
    } else if (!Get.routeTree.routes.any((GetPage<dynamic> element) => element.name == location)){
      location = Routes.unknown.route;
    }

    Get.log('GetInformationParser: route location: $location');

    final RouteDecoder matchResult = Get.routeTree.matchRoute(location);

    return SynchronousFuture<GetNavConfig>(
      GetNavConfig(
        currentTreeBranch: matchResult.treeBranch,
        location: location,
        state: routeInformation.state,
      ),
    );
  }
}
