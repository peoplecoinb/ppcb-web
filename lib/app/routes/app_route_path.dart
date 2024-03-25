
import 'app_routes.dart';

class AppRoutePath{

  AppRoutePath.unknown() : path = null, unKnown = true;
  AppRoutePath.home() : path = Routes.home.route, unKnown = false;
  AppRoutePath.account() : path = Routes.account.route, unKnown = false;
  AppRoutePath.otherPage(this.path) : unKnown = false;

  final String? path;
  final bool unKnown;

  bool get isHomePage => path == Routes.home.route;
  bool get isAccountPage => path == Routes.account.route;
}
