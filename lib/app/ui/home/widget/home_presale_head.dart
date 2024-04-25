import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../constants/constants.dart';
import '../../widgets/app_responsive_screen.dart';
import 'home_banner_icon_animation.dart';

class HomePresaleHead extends StatelessWidget with AppResponsiveScreen {
  const HomePresaleHead({super.key});

  TextStyle get timeTextStyle => AppTextStyles.getHeadingStyle(AppTextStyles.zendots).copyWith(color: AppColors.black);
  TextStyle get timeDescriptionTextStyle =>
      AppTextStyles.getXlStyle(AppTextStyles.bold).copyWith(color: AppColors.primary);

  @override
  Widget build(BuildContext context) {
    return buildResponsiveScreen(context);
  }

  @override
  Widget buildDesktop(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 120,
            left: 0,
            child: HomeBannerIconAnimation(
              child: Image.asset(AppImages.png('banner_shape01')),
            ),
          ),
          Positioned(
            bottom: 120,
            right: 0,
            child: HomeBannerIconAnimation(
              direction: Axis.vertical,
              child: Image.asset(AppImages.png('banner_shape02')),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              Column(
                children: <Widget>[
                  Text(
                    'presale_title'.tr.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: AppTextStyles.getHeadingStyle(AppTextStyles.zendots),
                  ),
                  const SizedBox(
                    height: 10,
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
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              buildClock(),
              Lottie.asset(AppImages.lottie('scroll_down')),
            ],
          ),
        ],
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
              bottom: 50,
              left: 0,
              child: HomeBannerIconAnimation(
                direction: Axis.vertical,
                child: Image.asset(
                  AppImages.png('banner_shape01'),
                  width: 140,
                  height: 140,
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              right: 0,
              child: HomeBannerIconAnimation(
                child: Image.asset(
                  AppImages.png('banner_shape02'),
                  width: 140,
                  height: 140,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      'presale_title'.tr.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: AppTextStyles.get2xlPlusStyle(AppTextStyles.zendots),
                    ),
                    const SizedBox(
                      height: 8,
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
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'A new smart blockchain based marketplace for\ntrading digital goods & assets according.',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.getSmStyle(AppTextStyles.zendots),
                    ),
                  ],
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
          borderRadius: BorderRadius.circular(10),
          color: AppColors.white,
          // gradient: LinearGradient(
          //   colors: <Color>[
          //     HexColor.fromHex('#6C6D81'),
          //     HexColor.fromHex('#202128'),
          //   ],
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          // ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: AppColors.black.withOpacity(0.5),
              blurRadius: 20,
              spreadRadius: 0.5,
              offset: const Offset(0, 5),
            ),
          ]),
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
