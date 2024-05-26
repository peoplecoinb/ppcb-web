import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../generated/l10n.dart';
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
          const SizedBox(
            height: 30,
          ),
          buildPartner(),
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
          'I. ${S.current.white_paper_intro}',
          style: AppTextStyles.getHeadingStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          S.current.white_paper_content_1,
          style: AppTextStyles.getSmStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          S.current.white_paper_content_2,
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
          S.current.white_paper_content_3,
          style: AppTextStyles.getSmStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          S.current.white_paper_content_4,
          style: AppTextStyles.getSmStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          S.current.white_paper_content_5,
          style: AppTextStyles.getSmStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          S.current.white_paper_content_6,
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
          'II. ${S.current.white_paper_fund_from_community}',
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
          'II. ${S.current.white_paper_fund_from_community}',
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
          'III. ${S.current.white_paper_allocation}',
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
            )),
      ],
    );
  }

  Widget buildAllocationMobile() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'III. ${S.current.white_paper_allocation}',
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
            )),
      ],
    );
  }

  Widget buildPartner() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'IV. ${S.current.white_paper_partner}',
          style: AppTextStyles.getHeadingStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
                image: AssetImage(AppImages.png('white_paper_partner')),
              )),
        ),
      ],
    );
  }

  Widget buildPartnerMobile() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'IV. ${S.current.white_paper_partner}',
          style: AppTextStyles.get2xlStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
                image: AssetImage(AppImages.png('white_paper_partner')),
              )),
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
          'I. ${S.current.white_paper_intro}',
          style: AppTextStyles.get2xlStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          S.current.white_paper_content_1,
          style: AppTextStyles.getXsStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          S.current.white_paper_content_2,
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
          S.current.white_paper_content_3,
          style: AppTextStyles.getXsStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          S.current.white_paper_content_4,
          style: AppTextStyles.getXsStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          S.current.white_paper_content_5,
          style: AppTextStyles.getXsStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          S.current.white_paper_content_6,
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
          const SizedBox(
            height: 30,
          ),
          buildPartnerMobile(),
        ],
      ),
    );
  }

  @override
  Widget buildTablet(BuildContext context) {
    return buildDesktop(context);
  }
}
