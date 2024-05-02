import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';
import '../../extensions/hex_color.dart';
import '../widgets/app_responsive_screen.dart';
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
      ),
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
      ),
    );
  }

  @override
  Widget buildTablet(BuildContext context) {
    return buildDesktop(context);
  }
}
