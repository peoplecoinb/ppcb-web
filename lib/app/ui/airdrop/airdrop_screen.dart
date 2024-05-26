import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/services.dart';

import '../../../generated/l10n.dart';
import '../../constants/constants.dart';
import '../../extensions/hex_color.dart';
import '../home/widget/home_banner_icon_animation.dart';
import '../home/widget/top_background.dart';
import '../navigation/widget/app_navigation_bar.dart';
import '../ui.dart';

class AirdropScreen extends StatefulWidget {
  const AirdropScreen({super.key});

  @override
  State<AirdropScreen> createState() => _AirdropScreenState();
}

class _AirdropScreenState extends State<AirdropScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 20),
      controller: NavigationProvider.of(context).scrollController,
      child: Column(
        children: <Widget>[
          TopBackground(
            image: AppImages.png('airdrop_bg'),
            showBlur: false,
            child: Column(
              children: <Widget>[
                const AppNavigationBar(),
                Expanded(
                  child: Center(
                    child: Text(
                      S.current.airdrop_title.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: AppTextStyles.getHeadingStyle(AppTextStyles.zendots).copyWith(shadows: <Shadow>[
                        Shadow(
                          color: HexColor.fromHex('#000000'),
                          blurRadius: 4,
                          offset: const Offset(4, 4),
                        ),
                      ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Lottie.asset(AppImages.lottie('scroll_down')),
                ),
              ],
            ),
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
              TopBackground(
                isDynamicHeigh: true,
                child: Container(
                  width: MOBILE_PAGE_MAX_WIDTH,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(top: 20, bottom: 20),
                  decoration: BoxDecoration(
                    color: HexColor.fromHex('#0F101D'),
                    border: Border.all(
                      color: HexColor.fromHex('#2D2E3A'),
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: HexColor.fromHex('#000000').withOpacity(0.7),
                        blurRadius: 20,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: HtmlWidget(
                    aidrop_html,
                    onTapUrl: (String p0) {
                      if (p0.contains('mailto:')) {
                        p0 = p0.replaceAll('mailto:', '');
                      }
                      Clipboard.setData(ClipboardData(text: p0)).then((_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: AppColors.white,
                            content: Text(
                              'Copied to clipboard: $p0',
                              style: AppTextStyles.zendots.copyWith(color: AppColors.primary),
                            ),
                          ),
                        );
                      });
                      return true;
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
