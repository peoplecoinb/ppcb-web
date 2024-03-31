import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';
import '../ui.dart';

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
      body: buildResponsiveScreen(context),
    );
  }

  Widget buildNavigationBar() {
    return Container(
      height: 68,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.white.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: DESKTOP_PAGE_MAX_WIDTH,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildLogoAppName(),
              buildMenu(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLogoAppName() {
    return Row(
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
    );
  }

  Widget buildMenu() {
    return Row(
      children: <Widget>[
        for (final String menu in NAVIGATION_MENU)
          Padding(
            padding: EdgeInsets.only(right: menu == 'navigation_more' ? 0 : 32),
            child: Row(
              children: <Widget>[
                Text(
                  menu.tr.toUpperCase(),
                  style: AppTextStyles.getBaseStyle(AppTextStyles.zendots.copyWith(
                    color: AppColors.gray,
                  )),
                ),
                if (menu == 'navigation_more')
                  Icon(
                    Icons.arrow_drop_down,
                    color: AppColors.gray,
                    size: 40,
                  ),
              ],
            ),
          ),
      ],
    );
  }

  Widget buildNavigationSocial() {
    return Container(
      height: 68,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.white.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: DESKTOP_PAGE_MAX_WIDTH,
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                for (final String social in NAVIGATION_SOCIAL)
                  Padding(
                    padding: const EdgeInsets.only(right: 32),
                    child: Image.asset(
                      AppImages.png(social),
                      scale: 2,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget buildDesktop(BuildContext context) {
    return Column(
      children: <Widget>[
        buildNavigationBar(),
        Expanded(
          child: widget.child,
        ),
        buildNavigationSocial(),
      ],
    );
  }

  @override
  Widget buildMobile(BuildContext context) {
    // TODO: implement buildMobile
    return buildDesktop(context);
  }

  @override
  Widget buildTablet(BuildContext context) {
    // TODO: implement buildTablet
    return buildDesktop(context);
  }
}
