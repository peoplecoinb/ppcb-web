import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../generated/l10n.dart';
import '../../constants/constants.dart';
import '../home/widget/home_banner_icon_animation.dart';
import '../home/widget/top_background.dart';
import '../navigation/widget/app_navigation_bar.dart';
import '../ui.dart';
import 'white_paper_content.dart';
// import 'white_paper_video.dart';

class WhitePaperScreen extends StatefulWidget {
  const WhitePaperScreen({super.key});

  @override
  State<WhitePaperScreen> createState() => _WhitePaperScreenState();
}

class _WhitePaperScreenState extends State<WhitePaperScreen> with AppResponsiveScreen {
  @override
  Widget build(BuildContext context) {
    return buildResponsiveScreen(context);
  }

  @override
  Widget buildDesktop(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: TopBackground(
              isDynamicHeigh: true,
              image: AppImages.png('white_paper_bg'),
              child: Column(
                children: <Widget>[
                  const AppNavigationBar(),
                  Expanded(
                    child: Center(
                      child: Text(
                        S.current.navigation_white_paper.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: AppTextStyles.getHeadingStyle(AppTextStyles.zendots),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            children: <Widget>[
              Positioned(
                top: 200,
                right: 0,
                child: HomeBannerIconAnimation(
                  direction: Axis.vertical,
                  speedRange: 100,
                  duration: const Duration(seconds: 15),
                  child: Image.asset(
                    AppImages.png('features_shape02'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 300,
                child: HomeBannerIconAnimation(
                  speedRange: 150,
                  duration: const Duration(seconds: 15),
                  child: Image.asset(
                    AppImages.png('features_shape02'),
                    fit: BoxFit.fitHeight,
                    width: 200,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: HomeBannerIconAnimation(
                  speedRange: -150,
                  direction: Axis.vertical,
                  duration: const Duration(seconds: 15),
                  child: Image.asset(
                    AppImages.png('features_shape02'),
                    fit: BoxFit.fitHeight,
                    width: 400,
                  ),
                ),
              ),
              const TopBackground(
                isDynamicHeigh: true,
                showBlur: false,
                child: WhitePaperContent(),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  @override
  Widget buildMobile(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          TopBackground(
            isDynamicHeigh: true,
            image: AppImages.png('white_paper_bg'),
            child: Column(
              children: <Widget>[
                const AppNavigationBar(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 90),
                  child: Text(
                    S.current.navigation_white_paper.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: AppTextStyles.get2xlPlusStyle(AppTextStyles.zendots),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const WhitePaperContent(),
        ],
      ),
    );
  }

  @override
  Widget buildTablet(BuildContext context) {
    return buildDesktop(context);
  }
}
