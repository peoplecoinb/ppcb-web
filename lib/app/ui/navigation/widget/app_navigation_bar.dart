import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import 'app_navigation_menu.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        children: <Widget>[
          Image.asset(
            AppImages.png('logo'),
            width: 100,
            height: 100,
            fit: BoxFit.fill,
          ),
          Text(
            'PPCB',
            style: AppTextStyles.get2xlPlusStyle(
              AppTextStyles.zendots.copyWith(
                color: AppColors.white,
              ),
            ),
          ),
          const Spacer(),
          const AppNavigationMenu()
        ],
      ),
    );
  }
}
