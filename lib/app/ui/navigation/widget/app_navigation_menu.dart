import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../blocs/application/application_cubit.dart';
import '../../../constants/constants.dart';
import '../../../routes/app_route_delegate.dart';
import '../../../routes/app_routes.dart';
import '../../ui.dart';

class AppNavigationMenu extends StatelessWidget with AppResponsiveScreen {
  const AppNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return buildResponsiveScreen(context);
  }

  Widget buildMenuItems(String text, {double padding = 24, Function()? action}) {
    return GestureDetector(
      onTap: (){
        Get.find<ApplicationCubit>().videoController.stopVideo();
        if(action != null){
          action();
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: HoverText(
          text: text.tr.toUpperCase(),
          style: AppTextStyles.getSmStyle(
            AppTextStyles.zendots.copyWith(
              color: AppColors.white,
            ),
          ),
          hoverStyle: AppTextStyles.getSmStyle(
            AppTextStyles.zendots.copyWith(
              color: AppColors.primary,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget buildDesktop(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: AppColors.white, width: 1.2),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          buildMenuItems(
            'home',
            action: () {
              Get.rootDelegate.toNamed(Routes.home.route);
            },
          ),
          buildMenuItems('navigation_white_paper', action: () {
            Get.rootDelegate.toNamed(Routes.whitePaper.route);
          }),
          buildMenuItems('fund'),
          buildMenuItems('road_map'),
          buildMenuItems('team'),
          buildMenuItems('contract'),
        ],
      ),
    );
  }

  @override
  Widget buildMobile(BuildContext context) {
    return OutlinedButton(
        onPressed: () {
          Scaffold.of(context).openEndDrawer();
        },
        style: ButtonStyle(
          alignment: Alignment.center,
          iconSize: MaterialStateProperty.all(28),
          side: MaterialStateProperty.all(BorderSide(color: AppColors.primary)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(999))),
          backgroundColor: MaterialStateProperty.all<Color>(AppColors.primary),
        ),
        child: Icon(Icons.menu, color: AppColors.white));
  }

  @override
  Widget buildTablet(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: AppColors.white, width: 1.2),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          buildMenuItems(
            'home',
            padding: 16,
            action: () {
              AppRouteDelegate().toNamed(Routes.home.route);
            },
          ),
          buildMenuItems(
            'navigation_white_paper',
            padding: 16,
            action: () {
              AppRouteDelegate().toNamed(Routes.whitePaper.route);
            },
          ),
          buildMenuItems('fund', padding: 16),
          buildMenuItems('road_map', padding: 16),
          buildMenuItems('team', padding: 16),
          buildMenuItems('contract', padding: 16),
        ],
      ),
    );
  }
}
