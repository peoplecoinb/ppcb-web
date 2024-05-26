import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../widgets/app_responsive_screen.dart';

class TopBackground extends StatelessWidget with AppResponsiveScreen {
  const TopBackground({
    super.key,
    required this.child,
    this.showBlur = true,
    this.isDynamicHeigh = false,
    this.desktopMinHeight,
    this.image,
    this.borderRadius,
  });
  final Widget child;
  final bool showBlur;
  final bool isDynamicHeigh;
  final double? desktopMinHeight;
  final double? borderRadius;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return buildResponsiveScreen(context);
  }

  @override
  Widget buildDesktop(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: desktopMinHeight ?? DESKTOP_PAGE_MAX_HEIGHT,
      ),
      height: isDynamicHeigh ? null : MediaQuery.of(context).size.height - 16,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image ?? AppImages.png('banner_bg')),
          fit: BoxFit.cover,
        ),
        gradient: showBlur
            ? LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.transparent,
                  AppColors.primary,
                ],
              )
            : null,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(borderRadius ?? 20),
          bottomRight: Radius.circular(borderRadius ?? 20),
        ),
      ),
      alignment: Alignment.topCenter,
      child: child,
    );
  }

  @override
  Widget buildMobile(BuildContext context) {
    return Container(
      height: isDynamicHeigh ? null : 680,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image ?? AppImages.png('banner_bg')),
          fit: BoxFit.cover,
        ),
        gradient: showBlur
            ? LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.transparent,
                  AppColors.primary,
                ],
              )
            : null,
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
      constraints: BoxConstraints(
        maxHeight: isDynamicHeigh ? double.infinity : DESKTOP_PAGE_MAX_HEIGHT,
      ),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image ?? AppImages.png('banner_bg')),
          fit: BoxFit.cover,
        ),
        gradient: showBlur
            ? LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.transparent,
                  AppColors.primary,
                ],
              )
            : null,
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
