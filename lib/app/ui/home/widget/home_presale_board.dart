import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../widgets/app_responsive_screen.dart';
import 'home_banner_icon_animation.dart';
import 'home_presale_connect.dart';

class HomePresaleBoard extends StatefulWidget {
  const HomePresaleBoard({super.key});

  @override
  State<HomePresaleBoard> createState() => _HomePresaleBoardState();
}

class _HomePresaleBoardState extends State<HomePresaleBoard> with AppResponsiveScreen {
  @override
  Widget build(BuildContext context) {
    return buildResponsiveScreen(context);
  }

  @override
  Widget buildDesktop(BuildContext context) {
    return SizedBox(
      width: DESKTOP_PAGE_MAX_WIDTH,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: r'$180,148 ',
              style: AppTextStyles.getHeadingStyle(AppTextStyles.zendots).copyWith(color: AppColors.primary),
              children: <TextSpan>[
                TextSpan(
                  text: 'Contribution Receive',
                  style: AppTextStyles.getHeadingStyle(AppTextStyles.zendots).copyWith(color: AppColors.white),
                )
              ],
            ),
          ),
          buildBottom(),
        ],
      ),
    );
  }

  Widget buildBottom() {
    return SizedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            width: 2,
            height: 250,
            color: AppColors.primary,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                HomeBannerIconAnimation(
                  speedRange: 50,
                  child: Image.asset(
                    AppImages.png('features_shape02'),
                    height: 380,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                buildPresaleNote(),
              ],
            ),
          ),
          const Expanded(child: PreSaleConnect()),
        ],
      ),
    );
  }

// Phase 1: 1USDT = 5000PPCB for initial 100,000,000 PPCB
// Phase 2: 1USDT = 3000PPCB for the next 300,000,000 PPCB
// Phase 3: 1USDT = 2500PPCB for the next 1,000,000,000 PPCB
// Phase 4: 1USDT = 2000PPCB for the next 2,600,000,000 PPCB
// Phase 5: 1USDT = 1500PPCB; for the remaining 6,000,000,000 PPCB

  Widget buildPresaleNote() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildNoteItem('Stage 1', '1USDT = 5000PPCB', ' for initial 100,000,000 PPCB'),
        const SizedBox(
          height: 8,
        ),
        buildNoteItem('Stage 2', '1USDT = 3000PPCB', ' for the next 300,000,000 PPCB'),
        const SizedBox(
          height: 8,
        ),
        buildNoteItem('Stage 3', '1USDT = 2500PPCB', ' for the next 1,000,000,000 PPCB'),
        const SizedBox(
          height: 8,
        ),
        buildNoteItem('Stage 4', '1USDT = 2000PPCB', ' for the next 2,600,000,000 PPCB'),
        const SizedBox(
          height: 8,
        ),
        buildNoteItem('Stage 5', '1USDT = 1500PPCB', ' for the remaining 6,000,000,000 PPCB'),
      ],
    );
  }

  Widget buildNoteItem(String stageName, String price, String remain) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '$stageName: $price',
          style: AppTextStyles.getLgStyle(AppTextStyles.zendots),
        ),
        RichText(
            text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: price,
              style: AppTextStyles.getSmStyle(AppTextStyles.zendots).copyWith(color: AppColors.primary),
            ),
            TextSpan(
              text: remain,
              style: AppTextStyles.getSmStyle(AppTextStyles.zendots).copyWith(color: AppColors.white),
            ),
          ],
        )),
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
    return buildDesktop(context);
  }
}
