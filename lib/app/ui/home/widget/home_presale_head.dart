import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../../generated/l10n.dart';
import '../../../constants/constants.dart';
import '../../../routes/app_routes.dart';
import '../../ui.dart';
import '../../widgets/widgets.dart';
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
              direction: Axis.vertical,
              child: Image.asset(
                AppImages.png('3'),
                height: 220,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            bottom: 120,
            right: 0,
            child: HomeBannerIconAnimation(
              child: Image.asset(AppImages.png('4')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const SizedBox(
                  height: 50,
                ),
                Column(
                  children: <Widget>[
                    Text(
                      S.current.presale_title.toUpperCase(),
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
                        S.current.home_slogan.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: AppTextStyles.getHeadingStyle(AppTextStyles.zendots).copyWith(color: AppColors.primary),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      S.current.home_content,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.getXlStyle(AppTextStyles.zendots),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ProminentButton(
                  action: () {
                    context.go(Routes.airdrop.route);
                  },
                  title: S.current.airdrop_title.toUpperCase(),
                  textStyle: AppTextStyles.get2xlStyle(AppTextStyles.zendots),
                  radius: 999,
                  padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                ),
                const SizedBox(height: 20),
                ProminentButton(
                  action: () {
                    context.go(Routes.become_ambassador.route);
                  },
                  title: S.current.become_ambassador.toUpperCase(),
                  textStyle: AppTextStyles.get2xlStyle(AppTextStyles.zendots),
                  radius: 999,
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  backgroundColor: AppColors.white,
                  borderColor: AppColors.white,
                  textColor: AppColors.primary,
                  shadowColor: AppColors.white,
                ),
                const SizedBox(
                  height: 20,
                ),
                buildClock(),
                Lottie.asset(AppImages.lottie('scroll_down')),
              ],
            ),
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
                  AppImages.png('3'),
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
                  AppImages.png('4'),
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
                      S.current.presale_title.toUpperCase(),
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
                        S.current.home_slogan.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: AppTextStyles.get2xlPlusStyle(AppTextStyles.zendots).copyWith(color: AppColors.primary),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      S.current.home_content,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.getSmStyle(AppTextStyles.zendots),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                ProminentButton(
                  action: () {
                    context.go(Routes.airdrop.route);
                  },
                  title: S.current.airdrop_title.toUpperCase(),
                  textStyle: AppTextStyles.getSmStyle(AppTextStyles.zendots),
                  radius: 999,
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                ),
                const SizedBox(height: 20),
                ProminentButton(
                  action: () {
                    context.go(Routes.become_ambassador.route);
                  },
                  title: S.current.become_ambassador.toUpperCase(),
                  textStyle: AppTextStyles.getSmStyle(AppTextStyles.zendots),
                  radius: 999,
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  backgroundColor: AppColors.white,
                  borderColor: AppColors.white,
                  textColor: AppColors.primary,
                  shadowColor: AppColors.white,
                ),
                const SizedBox(
                  height: 16,
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
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: AppColors.black.withOpacity(0.5),
              blurRadius: 20,
              spreadRadius: 0.5,
              offset: const Offset(0, 5),
            ),
          ],
          border: Border.all(color: AppColors.primary, width: 2)),
      child: Center(
        child: TimerCountdown(
          endTime: DateTime(2024, 8, 1, 23, 23, 59).toUtc(),
          timeTextStyle: timeTextStyle ?? this.timeTextStyle,
          descriptionTextStyle: timeDescriptionTextStyle ?? this.timeDescriptionTextStyle,
          colonsTextStyle: timeTextStyle ?? this.timeTextStyle,
        ),
      ),
    );
  }
}
