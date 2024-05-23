import 'package:flutter/material.dart';

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

class _AirdropScreenState extends State<AirdropScreen> with AppResponsiveScreen {
  @override
  Widget build(BuildContext context) {
    return TopBackground(
      isDynamicHeigh: true,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 20),
        controller: NavigationProvider.of(context).scrollController,
        child: Column(
          children: <Widget>[
            const AppNavigationBar(),
            Container(
              width: MOBILE_PAGE_MAX_WIDTH,
              height: 2000,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: HexColor.fromHex('#0F101D'),
                borderRadius: BorderRadius.circular(20),
              ),
              child: buildResponsiveScreen(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTitleDestop(String text) {
    return Text(
      text,
      style: AppTextStyles.getHeadingStyle(AppTextStyles.zendots),
    );
  }

  @override
  Widget buildDesktop(BuildContext context) {
    return Column(
      children: <Widget>[
        buildTitleDestop(S.current.airdrop_title),
      ],
    );
  }

  @override
  Widget buildMobile(BuildContext context) {
    // TODO: implement buildMobile
    throw UnimplementedError();
  }

  @override
  Widget buildTablet(BuildContext context) {
    // TODO: implement buildTablet
    throw UnimplementedError();
  }
}
