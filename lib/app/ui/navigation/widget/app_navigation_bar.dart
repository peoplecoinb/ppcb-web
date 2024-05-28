import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../constants/constants.dart';
import '../../../routes/app_routes.dart';
import '../../widgets/app_responsive_screen.dart';
import '../../widgets/hover_text.dart';
import 'app_navigation_menu.dart';

class AppNavigationBar extends StatelessWidget with AppResponsiveScreen {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () => context.go(Routes.home.route),
            child: buildResponsiveScreen(context),
          ),
          const Spacer(),
          const AppNavigationMenu()
        ],
      ),
    );
  }

  @override
  Widget buildDesktop(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Image.asset(
          AppImages.png('logo'),
          width: 100,
          height: 100,
          fit: BoxFit.fill,
        ),
        HoverText(
          text: 'PPCB',
          style: AppTextStyles.get2xlPlusStyle(
            AppTextStyles.zendots.copyWith(
              color: AppColors.white,
            ),
          ),
          hoverStyle: AppTextStyles.get2xlPlusStyle(
            AppTextStyles.zendots.copyWith(
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget buildMobile(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Image.asset(
          AppImages.png('logo'),
          width: 70,
          height: 70,
          fit: BoxFit.fill,
        ),
        HoverText(
          text: 'PPCB',
          style: AppTextStyles.get2xlPlusStyle(
            AppTextStyles.zendots.copyWith(
              color: AppColors.white,
            ),
          ),
          hoverStyle: AppTextStyles.get2xlPlusStyle(
            AppTextStyles.zendots.copyWith(
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget buildTablet(BuildContext context) {
    return buildDesktop(context);
  }
}
