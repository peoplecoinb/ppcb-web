import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';
import '../../ui.dart';

class AppNavigationMenu extends StatelessWidget {
  const AppNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      decoration: BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: AppColors.white, width: 1.2),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          buildMenuItems('home'),
          buildMenuItems('features'),
          buildMenuItems('ico_chart'),
          buildMenuItems('road_map'),
          buildMenuItems('blog'),
          buildMenuItems('contract'),
        ],
      ),
    );
  }

  Widget buildMenuItems(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
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
    );
  }
}
