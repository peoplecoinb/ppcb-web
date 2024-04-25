import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';
import '../../widgets/app_responsive_screen.dart';

class TopBackground extends StatelessWidget with AppResponsiveScreen{
  const TopBackground({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return buildResponsiveScreen(context);
  }
  
  @override
  Widget buildDesktop(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: DESKTOP_PAGE_MAX_HEIGHT,
      ),
      height: Get.height - 16,
      width: Get.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.png('banner_bg')),
          fit: BoxFit.cover,
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.transparent,
            AppColors.primary,
          ],
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      alignment: Alignment.topCenter,
      child: child,
    );
  }
  
  @override
  Widget buildMobile(BuildContext context) {
    return Container(
      height: 680,
      width: Get.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.png('banner_bg')),
          fit: BoxFit.cover,
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.transparent,
            AppColors.primary,
          ],
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      alignment: Alignment.topCenter,
      child: child,
    );
  }
  
  @override
  Widget buildTablet(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: DESKTOP_PAGE_MAX_HEIGHT,
      ),
      height: Get.height - 16,
      width: Get.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.png('banner_bg')),
          fit: BoxFit.cover,
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.transparent,
            AppColors.primary,
          ],
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      alignment: Alignment.topCenter,
      child: child,
    );
  }
}
