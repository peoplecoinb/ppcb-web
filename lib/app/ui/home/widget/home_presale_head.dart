import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../constants/constants.dart';
import '../../widgets/app_responsive_screen.dart';

class HomePresaleHead extends StatelessWidget with AppResponsiveScreen {
  const HomePresaleHead({super.key});

  TextStyle get timeTextStyle => AppTextStyles.getHeadingStyle(AppTextStyles.zendots).copyWith(color: AppColors.black);
  TextStyle get timeDescriptionTextStyle =>
      AppTextStyles.getXlStyle(AppTextStyles.bold).copyWith(color: AppColors.black);

  @override
  Widget build(BuildContext context) {
    return buildResponsiveScreen(context);
  }

  @override
  Widget buildDesktop(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children: <Widget>[
                        Positioned(
              bottom: 32,
              left: 50,
              child: Image.asset(AppImages.png('banner_shape01')),
            ),
            Positioned(
              bottom: 32,
              right: 90,
              child: Image.asset(AppImages.png('banner_shape02')),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'presale_title'.tr.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: AppTextStyles.getHeadingStyle(AppTextStyles.zendots),
                  ),
                  ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (Rect bounds) => LinearGradient(colors: <Color>[
                      AppColors.white,
                      AppColors.primary,
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
                        .createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                    ),
                    child: Text(
                      'Our ICO is incoming'.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: AppTextStyles.getHeadingStyle(AppTextStyles.zendots).copyWith(color: AppColors.primary),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'A new smart block chain based marketplace for\ntrading digital goods & assets according.',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.getXlStyle(AppTextStyles.zendots),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  buildClock(),
                  const SizedBox(
                    height: 80,
                  ),
                  Lottie.asset(AppImages.lottie('scroll_down')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget buildMobile(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Stack(
          children: <Widget>[
                        Positioned(
              bottom: 16,
              left: 16,
              child: Image.asset(
                AppImages.png('banner_shape01'),
                width: 120,
                height: 120,
              ),
            ),
            Positioned(
              bottom: 16,
              right: 16,
              child: Image.asset(
                AppImages.png('banner_shape02'),
                width: 120,
                height: 120,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'presale_title'.tr.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: AppTextStyles.get2xlPlusStyle(AppTextStyles.zendots),
                  ),
                  ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (Rect bounds) => LinearGradient(colors: <Color>[
                      AppColors.white,
                      AppColors.primary,
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
                        .createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                    ),
                    child: Text(
                      'Our ICO is incoming'.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: AppTextStyles.get2xlPlusStyle(AppTextStyles.zendots).copyWith(color: AppColors.primary),
                    ),
                  ),
                  Text(
                    'A new smart blockchain based marketplace for\ntrading digital goods & assets according.',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.getSmStyle(AppTextStyles.zendots),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  buildClock(
                    width: 350,
                    height: 90,
                    timeTextStyle: timeTextStyle.copyWith(fontSize: 20),
                    timeDescriptionTextStyle: timeDescriptionTextStyle.copyWith(fontSize: 14),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Lottie.asset(AppImages.lottie('scroll_down'), width: 50, height: 70),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget buildTablet(BuildContext context) {
    return buildDesktop(context);
  }

  Widget buildClock({
    double width = 500,
    double height = 120,
    TextStyle? timeTextStyle,
    TextStyle? timeDescriptionTextStyle,
  }) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: AppColors.white,
      ),
      child: Center(
        child: TimerCountdown(
          endTime: DateTime(2024, 6, 8, 23, 23, 59).toUtc(),
          timeTextStyle: timeTextStyle ?? this.timeTextStyle,
          descriptionTextStyle: timeDescriptionTextStyle ?? this.timeDescriptionTextStyle,
          colonsTextStyle: timeTextStyle ?? this.timeTextStyle,
        ),
      ),
    );
  }
}
