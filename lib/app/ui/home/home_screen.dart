import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gif_view/gif_view.dart';

import '../../constants/constants.dart';
import '../widgets/app_responsive_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with AppResponsiveScreen {
  @override
  void initState() {
    // Future<void>.delayed(const Duration(seconds: 2), () {
    //   Get.toNamed(Routes.HOME);
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return buildResponsiveScreen(context);
  }

  Widget buildMindSet() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              'home_slogan'.tr.toUpperCase(),
              style: AppTextStyles.getHeadingStyle(
                AppTextStyles.zendots.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
            GifView.asset(
              AppImages.gif('dove'),
            )
          ],
        ),
        const SizedBox(height: 30),
        Text(
          'home_mindset'.tr,
          textAlign: TextAlign.justify,
          style: AppTextStyles.get2xlStyle(
            AppTextStyles.zendots.copyWith(
              color: AppColors.white,
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget buildDesktop(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.png('home_bg')),
            fit: BoxFit.fill,
          ),
        ),
        width: DESKTOP_PAGE_MAX_WIDTH,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 10, bottom: 40),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 7,
                child: buildMindSet(),
              ),
              const Expanded(
                flex: 5,
                child: SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget buildMobile(BuildContext context) {
    // TODO: implement buildMobile
    return buildDesktop(context);
  }

  @override
  Widget buildTablet(BuildContext context) {
    // TODO: implement buildTablet
    return buildDesktop(context);
  }
}
