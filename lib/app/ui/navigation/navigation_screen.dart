import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';
import '../../routes/app_route_delegate.dart';
import '../../routes/app_routes.dart';
import '../ui.dart';
import 'widget/app_menu_drawer.dart';
import 'widget/app_navigation_bar.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key, required this.child});
  final Widget child;

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> with AppResponsiveScreen {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const AppMenuDrawer(),
      body: buildResponsiveScreen(context),
    );
  }

  Widget buildNavigationBar() {
    return const AppNavigationBar();
  }

  Widget buildLogoAppName() {
    return GestureDetector(
      onTap: () { 
        AppRouteDelegate().toNamed(Routes.home.route);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            AppImages.png('logo'),
            width: 37,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            APP_NAME,
            style: AppTextStyles.getXlStyle(AppTextStyles.zendots.copyWith(
              color: AppColors.primary,
              shadows: <Shadow>[
                Shadow(
                  color: Colors.white.withOpacity(0.2),
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
            )),
          )
        ],
      ),
    );
  }

  @override
  Widget buildDesktop(BuildContext context) {
    return Column(
      children: <Widget>[
        // buildNavigationBar(),
        Expanded(
          child: widget.child,
        ),
      ],
    );
  }

  @override
  Widget buildMobile(BuildContext context) {
    return buildDesktop(context);
  }

  @override
  Widget buildTablet(BuildContext context) {
    return buildDesktop(context);
  }
}
