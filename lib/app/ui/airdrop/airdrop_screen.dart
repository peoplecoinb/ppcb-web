import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../generated/l10n.dart';
import '../../constants/constants.dart';
import '../../extensions/hex_color.dart';
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
              ],
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
                    offset: const Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              child: HtmlWidget(aidrop_html),
            ),
          ),
        ],
      ),
    );
  }
}
