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
    return Center(
      child: Stack(
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
              duration: const Duration(seconds: 15),
              child: Image.asset(
                AppImages.png('features_shape02'),
                fit: BoxFit.fitHeight,
                width: 400,
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              buildBottom(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildBottom() {
    return SizedBox(
      width: DESKTOP_PAGE_MAX_WIDTH,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          const Expanded(
            flex: 3,
            child: PreSaleConnect(),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: r'$0 ',
                    style: AppTextStyles.getHeadingStyle(AppTextStyles.zendots).copyWith(color: AppColors.primary),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Received',
                        style: AppTextStyles.getHeadingStyle(AppTextStyles.zendots).copyWith(color: AppColors.white),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                buildNotes(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNotesMobile() {
    return Container(
      width: 430,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.primary,
          width: 1.5,
        ),
        color: AppColors.black.withOpacity(0.25),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 16,
          ),
          buildBonusStageMobile(),
          const SizedBox(
            height: 30,
          ),
          buildPresaleNoteMobile(),
        ],
      ),
    );
  }

  Widget buildNotes() {
    return Container(
      padding: const EdgeInsets.all(32),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.primary,
          width: 1.5,
        ),
        color: AppColors.black.withOpacity(0.25),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 16,
          ),
          buildBonusStage(),
          const SizedBox(
            height: 30,
          ),
          buildPresaleNote(),
        ],
      ),
    );
  }

  Widget buildPresaleNoteMobile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'stages'.toUpperCase(),
          style: AppTextStyles.getLgStyle(AppTextStyles.zendots).copyWith(color: AppColors.white),
        ),
        const SizedBox(
          height: 16,
        ),
        buildNoteItemMobile('Stage 1', '1 USDT = 5000 PPCB', ' for 100M PPCB'),
        const SizedBox(
          height: 8,
        ),
        buildNoteItemMobile('Stage 2', '1 USDT = 4000 PPCB', ' for 300M PPCB'),
        const SizedBox(
          height: 8,
        ),
        buildNoteItemMobile('Stage 3', '1 USDT = 3500 PPCB', ' for 1B PPCB'),
        const SizedBox(
          height: 8,
        ),
        buildNoteItemMobile('Stage 4', '1 USDT = 3000 PPCB', ' for 2.6B PPCB'),
        const SizedBox(
          height: 8,
        ),
        buildNoteItemMobile('Stage 5', '1 USDT = 2500 PPCB', ' for 6B PPCB'),
      ],
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
        Text(
          'stages'.toUpperCase(),
          style: AppTextStyles.get2xlStyle(AppTextStyles.zendots).copyWith(color: AppColors.white),
        ),
        const SizedBox(
          height: 16,
        ),
        buildNoteItem('Stage 1', '1 USDT = 5000 PPCB', ' for 100M PPCB'),
        const SizedBox(
          height: 8,
        ),
        buildNoteItem('Stage 2', '1 USDT = 4000 PPCB', ' for 300M PPCB'),
        const SizedBox(
          height: 8,
        ),
        buildNoteItem('Stage 3', '1 USDT = 3500 PPCB', ' for 1B PPCB'),
        const SizedBox(
          height: 8,
        ),
        buildNoteItem('Stage 4', '1 USDT = 3000 PPCB', ' for 2.6B PPCB'),
        const SizedBox(
          height: 8,
        ),
        buildNoteItem('Stage 5', '1 USDT = 2500 PPCB', ' for 6B PPCB'),
      ],
    );
  }

// Bonus:
// Buy orders > 10 USDT are rewarded with 5% PPCB
// Buy orders > 100 USDT are rewarded with 20% PPCB
// Buy orders > 500 USDT are rewarded with 30% PPCB
// Buy orders > 2000 USDT are rewarded with 50% PPCB
// Buy orders > 5000 USDT are rewarded with 70% PPCB

  Widget buildBonusStageMobile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'bonus'.toUpperCase(),
          style: AppTextStyles.getLgStyle(AppTextStyles.zendots).copyWith(color: AppColors.white),
        ),
        const SizedBox(
          height: 16,
        ),
        buildBonusItemMobile('Buy orders > 10 USDT', ' bonus 5%'),
        const SizedBox(
          height: 8,
        ),
        buildBonusItemMobile('Buy orders > 100 USDT', ' bonus 10%'),
        const SizedBox(
          height: 8,
        ),
        buildBonusItemMobile('Buy orders > 500 USDT', ' bonus 15%'),
        const SizedBox(
          height: 8,
        ),
        buildBonusItemMobile('Buy orders > 2000 USDT', ' bonus 20%'),
        const SizedBox(
          height: 8,
        ),
        buildBonusItemMobile('Buy orders > 5000 USDT', ' bonus 30%'),
      ],
    );
  }

  Widget buildBonusStage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'bonus'.toUpperCase(),
          style: AppTextStyles.get2xlStyle(AppTextStyles.zendots).copyWith(color: AppColors.white),
        ),
        const SizedBox(
          height: 16,
        ),
        buildBonusItem('Buy orders > 10 USDT', ' are rewarded with 5% PPCB'),
        const SizedBox(
          height: 8,
        ),
        buildBonusItem('Buy orders > 100 USDT', ' are rewarded with 10% PPCB'),
        const SizedBox(
          height: 8,
        ),
        buildBonusItem('Buy orders > 500 USDT', ' are rewarded with 15% PPCB'),
        const SizedBox(
          height: 8,
        ),
        buildBonusItem('Buy orders > 2000 USDT', ' are rewarded with 20% PPCB'),
        const SizedBox(
          height: 8,
        ),
        buildBonusItem('Buy orders > 5000 USDT', ' are rewarded with 30% PPCB'),
      ],
    );
  }

  Widget buildNoteItem(String stageName, String price, String remain) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Text(
        //   '$stageName: $price',
        //   style: AppTextStyles.getBaseStyle(AppTextStyles.zendots),
        // ),
        RichText(
            text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: '$stageName: $price',
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

  Widget buildNoteItemMobile(String stageName, String price, String remain) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Text(
        //   '$stageName: $price',
        //   style: AppTextStyles.getBaseStyle(AppTextStyles.zendots),
        // ),
        RichText(
            text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: '$stageName: $price',
              style: AppTextStyles.getXsStyle(AppTextStyles.zendots).copyWith(color: AppColors.primary),
            ),
            TextSpan(
              text: remain,
              style: AppTextStyles.getXsStyle(AppTextStyles.zendots).copyWith(color: AppColors.white),
            ),
          ],
        )),
      ],
    );
  }

  Widget buildBonusItem(String condition, String reward) {
    return RichText(
        text: TextSpan(
      children: <TextSpan>[
        TextSpan(
          text: condition,
          style: AppTextStyles.getSmStyle(AppTextStyles.zendots).copyWith(color: AppColors.primary),
        ),
        TextSpan(
          text: reward,
          style: AppTextStyles.getSmStyle(AppTextStyles.zendots).copyWith(color: AppColors.white),
        ),
      ],
    ));
  }

  Widget buildBonusItemMobile(String condition, String reward) {
    return RichText(
        text: TextSpan(
      children: <TextSpan>[
        TextSpan(
          text: condition,
          style: AppTextStyles.getXsStyle(AppTextStyles.zendots).copyWith(color: AppColors.primary),
        ),
        TextSpan(
          text: reward,
          style: AppTextStyles.getXsStyle(AppTextStyles.zendots).copyWith(color: AppColors.white),
        ),
      ],
    ));
  }

  @override
  Widget buildMobile(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          bottom: 50,
          right: 0,
          child: HomeBannerIconAnimation(
            direction: Axis.vertical,
            speedRange: 100,
            duration: const Duration(seconds: 30),
            child: Image.asset(
              AppImages.png('features_shape02'),
              width: 300,
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 0,
          child: HomeBannerIconAnimation(
            direction: Axis.vertical,
            speedRange: -100,
            duration: const Duration(seconds: 15),
            child: Image.asset(
              AppImages.png('features_shape02'),
              width: 200,
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          left: 0,
          child: HomeBannerIconAnimation(
            direction: Axis.vertical,
            speedRange: 200,
            duration: const Duration(seconds: 15),
            child: Image.asset(
              AppImages.png('features_shape02'),
              width: 140,
              height: 140,
            ),
          ),
        ),
        Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: r'$0 ',
                    style: AppTextStyles.get2xlPlusStyle(AppTextStyles.zendots).copyWith(color: AppColors.primary),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Received',
                        style: AppTextStyles.get2xlPlusStyle(AppTextStyles.zendots).copyWith(color: AppColors.white),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                buildNotesMobile(),
                const SizedBox(
                  height: 16,
                ),
                const PreSaleConnect(),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget buildTablet(BuildContext context) {
    return buildDesktop(context);
  }
}
