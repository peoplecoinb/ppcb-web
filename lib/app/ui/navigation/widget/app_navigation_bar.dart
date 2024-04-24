import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';
import '../../widgets/app_responsive_screen.dart';
import 'app_navigation_menu.dart';

class AppNavigationBar extends StatelessWidget with AppResponsiveScreen {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return buildResponsiveScreen(context);
  }

  @override
  Widget buildDesktop(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        width: Get.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'PPCB',
              style: AppTextStyles.get2xlStyle(
                AppTextStyles.zendots.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
            const AppNavigationMenu()
          ],
        ),
      ),
    );
  }

  @override
  Widget buildMobile(BuildContext context) {
    // TODO: implement buildMobile
    throw UnimplementedError();
  }

  @override
  Widget buildTablet(BuildContext context) {
    // TODO: implement buildTablet
    throw UnimplementedError();
  }
}
