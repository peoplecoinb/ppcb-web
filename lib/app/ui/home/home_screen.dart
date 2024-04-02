import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gif_view/gif_view.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants/constants.dart';
import '../ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with AppResponsiveScreen {
  final Shadow textShadow = Shadow(
    color: Colors.black.withOpacity(0.8),
    offset: const Offset(0, 4),
    blurRadius: 4,
  );

  @override
  void initState() {
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
                  shadows: <Shadow>[textShadow],
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
          textAlign: TextAlign.start,
          style: AppTextStyles.get2xlStyle(
            AppTextStyles.zendots.copyWith(
              color: AppColors.white,
              shadows: <Shadow>[textShadow],
            ),
          ),
        )
      ],
    );
  }

  Widget buildDownloadApps() {
    Widget buildDownloadButton(String qrdata, String title) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16),
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: PrettyQrView.data(
              data: qrdata,
              decoration: PrettyQrDecoration(
                background: AppColors.white,
                image: PrettyQrDecorationImage(
                  padding: const EdgeInsets.all(10),
                  scale: 0.3,
                  image: AssetImage(AppImages.png('logo')),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            title.tr,
            style: AppTextStyles.getLgStyle(
              AppTextStyles.zendots.copyWith(
                color: AppColors.white,
                shadows: <Shadow>[textShadow],
              ),
            ),
          ),
        ],
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          'home_download_apps'.tr,
          style: AppTextStyles.get2xlStyle(
            AppTextStyles.zendots.copyWith(
              color: AppColors.white,
              shadows: <Shadow>[textShadow],
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            buildDownloadButton(
              'https://play.google.com/store/apps/details?id=com.ppcb.app',
              'home_android',
            ),
            const SizedBox(width: 20),
            buildDownloadButton(
              'https://play.google.com/store/apps/details?id=com.ppcb.app',
              'home_ios',
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        buildButtonPreSales(),
      ],
    );
  }

  Widget buildButtonPreSales() {
    return CustomOutlinedButton(
      title: 'home_pre_sales'.tr,
      action: () {
        launchUrl(
          Uri.parse('https://pancakeswap.finance/swap?outputCurrency=0xa5aFeBa0018a6fDa96712126ce346C007F000B26'),
          mode: LaunchMode.externalNonBrowserApplication,
        );
      },
      radius: 20,
      textColor: AppColors.white,
      backgroundColor: AppColors.primary.shade700,
      textStyle: AppTextStyles.getHeadingStyle(AppTextStyles.zendots),
    );
  }

  @override
  Widget buildDesktop(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.png('home_bg')),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
        child: SizedBox(
          width: DESKTOP_PAGE_MAX_WIDTH,
          height: Get.height,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 10, bottom: 40, right: 16, left: 16),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 7,
                  child: buildMindSet(),
                ),
                Expanded(
                  flex: 5,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: buildDownloadApps(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget buildMobile(BuildContext context) {
    return buildDesktop(context);
  }

  @override
  Widget buildTablet(BuildContext context) {
    return buildDesktop(context);
  }
}
