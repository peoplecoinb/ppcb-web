import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import 'app_navigation_menu.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: <Widget>[
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
