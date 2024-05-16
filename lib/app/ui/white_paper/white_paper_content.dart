import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';
import '../../extensions/hex_color.dart';
import '../ui.dart';
import 'white_paper_video.dart';

class WhitePaperContent extends StatelessWidget with AppResponsiveScreen {
  const WhitePaperContent({super.key});

  @override
  Widget build(BuildContext context) {
    return buildResponsiveScreen(context);
  }

  @override
  Widget buildDesktop(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: MOBILE_PAGE_MAX_WIDTH,
      decoration: BoxDecoration(
        color: HexColor.fromHex('#0F101D'),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildIntroduction(),
          const SizedBox(
            height: 30,
          ),
          buildFundFromCommunity(),
          const SizedBox(
            height: 30,
          ),
          buildAllocation(),
        ],
      ),
    );
  }

  Widget buildIntroduction() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          'I. ${'white_paper_intro'.tr}',
          style: AppTextStyles.getHeadingStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'white_paper_content_1'.tr,
          style: AppTextStyles.getSmStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'white_paper_content_2'.tr,
          style: AppTextStyles.getSmStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        const WhitePaperVideo(
          videoId: 'BW76pE40fMA',
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'white_paper_content_3'.tr,
          style: AppTextStyles.getSmStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'white_paper_content_4'.tr,
          style: AppTextStyles.getSmStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'white_paper_content_5'.tr,
          style: AppTextStyles.getSmStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'white_paper_content_6'.tr,
          style: AppTextStyles.getSmStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }

  Widget buildFundFromCommunity() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'II. ${'white_paper_fund_from_community'.tr}',
          style: AppTextStyles.getHeadingStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(AppImages.png('banner_bg')),
              fit: BoxFit.cover,
            ),
          ),
          child: ImageViewer(
            image: AssetImage(AppImages.png('white_paper_fund_from_community')),
          ),
        ),
      ],
    );
  }

  Widget buildFundFromCommunityMobile() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'II. ${'white_paper_fund_from_community'.tr}',
          style: AppTextStyles.get2xlStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(AppImages.png('banner_bg')),
              fit: BoxFit.cover,
            ),
          ),
          child: ImageViewer(
            image: AssetImage(AppImages.png('white_paper_fund_from_community')),
          ),
        ),
      ],
    );
  }

  Widget buildAllocation() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'III. ${'white_paper_allocation'.tr}',
          style: AppTextStyles.getHeadingStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(AppImages.png('banner_bg')),
              fit: BoxFit.cover,
            ),
            gradient: LinearGradient(
              colors: <Color>[
                AppColors.primary,
                AppColors.primary,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: ImageViewer(
            image: AssetImage(AppImages.png('white_paper_allocation')),
          )
        ),
      ],
    );
  }

  Widget buildAllocationMobile() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'III. ${'white_paper_allocation'.tr}',
          style: AppTextStyles.get2xlStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(AppImages.png('banner_bg')),
              fit: BoxFit.cover,
            ),
            gradient: LinearGradient(
              colors: <Color>[
                AppColors.primary,
                AppColors.primary,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: ImageViewer(
            image: AssetImage(AppImages.png('white_paper_allocation')),
          )
        ),
      ],
    );
  }

  Widget buildIntroductionMobile() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'I. ${'white_paper_intro'.tr}',
          style: AppTextStyles.get2xlStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'white_paper_content_1'.tr,
          style: AppTextStyles.getXsStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'white_paper_content_2'.tr,
          style: AppTextStyles.getXsStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        const WhitePaperVideo(
          videoId: 'BW76pE40fMA',
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'white_paper_content_3'.tr,
          style: AppTextStyles.getXsStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'white_paper_content_4'.tr,
          style: AppTextStyles.getXsStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'white_paper_content_5'.tr,
          style: AppTextStyles.getXsStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'white_paper_content_6'.tr,
          style: AppTextStyles.getXsStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }

  @override
  Widget buildMobile(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: MOBILE_PAGE_MAX_WIDTH,
      decoration: BoxDecoration(
        color: HexColor.fromHex('#0F101D'),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildIntroductionMobile(),
          const SizedBox(
            height: 30,
          ),
          buildFundFromCommunityMobile(),
          const SizedBox(
            height: 30,
          ),
          buildAllocationMobile(),
        ],
      ),
    );
  }

  @override
  Widget buildTablet(BuildContext context) {
    return buildDesktop(context);
  }
}
