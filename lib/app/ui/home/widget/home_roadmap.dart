import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../constants/constants.dart';
import '../../ui.dart';

List<Map<String, dynamic>> roadMapData = <Map<String, dynamic>>[
  <String, dynamic>{
    'holder': 'More than 20 Holders',
    'title': 'PPCB established',
    'contents': <String>[
      'List on Dex',
      'Pre-sale',
      'Communities',
    ]
  },
  <String, dynamic>{
    'holder': 'More than 1000 Holders',
    'title': 'Long-term holding',
    'contents': <String>[
      'ICO',
      'Partners',
      'Organizations sponsored',
      'Communities',
    ]
  },
  <String, dynamic>{
    'holder': 'More than 5000 Holders',
    'title': 'Long-term holding',
    'contents': <String>[
      'Listed on Ex',
      'Partners',
      'Organizations sponsored',
      'Communities',
    ]
  },
  <String, dynamic>{
    'holder': 'More than 20000 Holders',
    'title': 'Long-term holding',
    'contents': <String>[
      'PPCB executes its mission of global assistance',
      'PPCB establishes a global-scale ecosystem',
      'Communities',
    ]
  },
];

List<Map<String, dynamic>> roadMapDataMobile = <Map<String, dynamic>>[
  <String, dynamic>{
    'holder': 'More than 20 Holders',
    'title': 'PPCB established',
    'contents': <String>[
      'List on Dex',
      'Pre-sale',
      'Communities',
    ]
  },
  <String, dynamic>{
    'holder': 'More than 1000 Holders',
    'title': 'Long-term holding',
    'contents': <String>[
      'ICO',
      'Partners',
      'Organizations sponsored',
      'Communities',
    ]
  },
  <String, dynamic>{
    'holder': 'More than 5000 Holders',
    'title': 'Long-term holding',
    'contents': <String>[
      'Listed on Ex',
      'Partners',
      'Organizations sponsored',
      'Communities',
    ]
  },
  <String, dynamic>{
    'holder': 'More than 20000 Holders',
    'title': 'Long-term holding',
    'contents': <String>[
      'PPCB executes its mission of global assistance',
      'PPCB establishes a global-scale ecosystem',
      'Communities',
    ]
  },
  <String, dynamic>{'holder': '∞ Holders', 'title': '', 'contents': <String>[]},
];

class HomeRoadmap extends StatelessWidget with AppResponsiveScreen {
  const HomeRoadmap({super.key});

  @override
  Widget build(BuildContext context) {
    return buildResponsiveScreen(context);
  }

  @override
  Widget buildDesktop(BuildContext context) {
    return const _HomeRoadmapDesktop();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const _HomeRoadmapMobile();
  }

  @override
  Widget buildTablet(BuildContext context) {
    return const _HomeRoadmapDesktop();
  }
}

class _HomeRoadmapDesktop extends StatelessWidget {
  const _HomeRoadmapDesktop();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            S.current.navigation_road_map,
            textAlign: TextAlign.center,
            style: AppTextStyles.getHeadingStyle(AppTextStyles.zendots).copyWith(color: AppColors.primary),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Market-cap grows over time',
            textAlign: TextAlign.center,
            style: AppTextStyles.get2xlPlusStyle(AppTextStyles.zendots),
          ),
          const SizedBox(
            height: 50,
          ),
          buildRoadMap(),
          const SizedBox(
            height: 8,
          ),
          buildFinal(),
        ],
      ),
    );
  }

  Widget buildFinal() {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (Rect bounds) => LinearGradient(colors: <Color>[
            AppColors.white,
            AppColors.warring,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
              .createShader(
            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.warring.shade300, width: 4),
            ),
            child: Opacity(
              opacity: 0,
              child: Text(
                '∞ Holders'.toUpperCase(),
                style: AppTextStyles.get2xlPlusStyle(AppTextStyles.zendots),
              ),
            ),
          ),
        ),
        ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (Rect bounds) => LinearGradient(colors: <Color>[
            AppColors.warring,
            AppColors.primary,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
              .createShader(
            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
          ),
          child: Text(
            '∞ Holders'.toUpperCase(),
            style: AppTextStyles.get2xlPlusStyle(AppTextStyles.zendots),
          ),
        ),
      ],
    );
  }

  Widget buildRoadMap() {
    return Column(
      children: List<Widget>.generate(
        roadMapData.length,
        (int index) => buildItem(roadMapData[index], isRight: index.isEven),
      ),
    );
  }

  Widget buildLine() {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (Rect bounds) => LinearGradient(colors: <Color>[
        AppColors.white,
        AppColors.warring,
      ]).createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 8,
          ),
          Icon(
            Icons.arrow_circle_down_rounded,
            size: 50,
            color: AppColors.primary,
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: Container(
                width: 5,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(5),
                )),
          ),
        ],
      ),
    );
  }

  Widget buildItem(Map<String, dynamic> item, {bool isRight = false, bool isLast = false}) {
    return IntrinsicHeight(
      child: Row(
        children: <Widget>[
          if (isRight)
            const Expanded(child: SizedBox())
          else
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: buildItemContent(item),
              ),
            ),
          const SizedBox(width: 20),
          buildLine(),
          const SizedBox(width: 20),
          if (isRight)
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: buildItemContent(item),
              ),
            )
          else
            const Expanded(child: SizedBox()),
        ],
      ),
    );
  }

  Widget buildItemContent(Map<String, dynamic> item) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 220,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (Rect bounds) => LinearGradient(colors: <Color>[
              AppColors.primary,
              AppColors.warring,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
                .createShader(
              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
            ),
            child: Text(
              '${item['holder']}'.toUpperCase(),
              style: AppTextStyles.getXlStyle(AppTextStyles.zendots),
            ),
          ),
          Text(
            '${item['title']}',
            style: AppTextStyles.getXlStyle(AppTextStyles.zendots).copyWith(color: AppColors.primary),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List<Widget>.generate(
                (item['contents'] as List<String>).length,
                (int index) => Text(
                  '- ${(item['contents'] as List<String>)[index]}',
                  style: AppTextStyles.getBaseStyle(AppTextStyles.zendots),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _HomeRoadmapMobile extends StatelessWidget {
  const _HomeRoadmapMobile();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            S.current.navigation_road_map,
            textAlign: TextAlign.center,
            style: AppTextStyles.get2xlPlusStyle(AppTextStyles.zendots).copyWith(color: AppColors.primary),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Market-cap grows over time',
            textAlign: TextAlign.center,
            style: AppTextStyles.getLgStyle(AppTextStyles.zendots),
          ),
          const SizedBox(
            height: 50,
          ),
          buildRoadMap(),
        ],
      ),
    );
  }

  Widget buildRoadMap() {
    return Column(
      children: List<Widget>.generate(
        roadMapDataMobile.length,
        (int index) => buildItem(roadMapDataMobile[index], isLast: index == roadMapDataMobile.length - 1),
      ),
    );
  }

  Widget buildLine({bool isLast = false}) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (Rect bounds) => LinearGradient(colors: <Color>[
        AppColors.white,
        AppColors.warring,
      ]).createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Column(
        children: <Widget>[
          Icon(
            Icons.arrow_circle_down_rounded,
            size: 35,
            color: AppColors.primary,
          ),
          if (!isLast)
            Expanded(
              child: Container(
                width: 5,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget buildItem(Map<String, dynamic> item, {bool isLast = false}) {
    return IntrinsicHeight(
      child: Row(
        children: <Widget>[
          buildLine(isLast: isLast),
          const SizedBox(width: 20),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: isLast ? 0 : 170,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 4,),
                    ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (Rect bounds) => LinearGradient(colors: <Color>[
                        AppColors.primary,
                        AppColors.warring,
                      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
                          .createShader(
                        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                      ),
                      child: Text(
                        '${item['holder']}'.toUpperCase(),
                        style: AppTextStyles.getBaseStyle(AppTextStyles.zendots),
                      ),
                    ),
                    Text(
                      '${item['title']}',
                      style: AppTextStyles.getBaseStyle(AppTextStyles.zendots).copyWith(color: AppColors.primary),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List<Widget>.generate(
                          (item['contents'] as List<String>).length,
                          (int index) => Text(
                            '- ${(item['contents'] as List<String>)[index]}',
                            style: AppTextStyles.getSmStyle(AppTextStyles.zendots),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
