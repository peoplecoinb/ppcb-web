// ignore_for_file: avoid_dynamic_calls

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

import '../../../../generated/l10n.dart';
import '../../../constants/constants.dart';
import '../../widgets/app_responsive_screen.dart';

final List<Map<String, String>> _team = <Map<String, String>>[
  <String, String>{
    'name': S.current.economic_expert,
    'image': 'economic_expert',
  },
  <String, String>{
    'name': S.current.pharmacist,
    'image': 'pharmacist',
  },
  <String, String>{
    'name': S.current.design_director,
    'image': 'design_director',
  },
  <String, String>{
    'name': S.current.artist,
    'image': 'artist',
  },
  <String, String>{
    'name': S.current.factory_director,
    'image': 'factory_director',
  },
  <String, String>{
    'name': S.current.doctor,
    'image': 'doctor',
  },
  <String, String>{
    'name': S.current.it_specialist,
    'image':'it_specialist',
  },
];

final List<Map<String, dynamic>> _teamInMobile = <Map<String, dynamic>>[
  <String, dynamic>{
    'name': S.current.economic_expert_mobile,
    'image': 'economic_expert',
    'pos': <int>[1, 1]
  },
  <String, dynamic>{
    'name': S.current.pharmacist,
    'image': 'pharmacist',
    'pos': <int>[0, 0]
  },
  <String, dynamic>{
    'name': S.current.design_director_mobile,
    'image': 'design_director',
    'pos': <int>[2, 0]
  },
  <String, dynamic>{
    'name': S.current.artist,
    'image': 'artist',
    'pos': <int>[2, 1]
  },
  <String, dynamic>{
    'name': S.current.factory_director_mobile,
    'image': 'factory_director',
    'pos': <int>[0, 1]
  },
  <String, dynamic>{
    'name': S.current.doctor,
    'image': 'doctor',
    'pos': <int>[1, 0]
  },
  <String, dynamic>{
    'name': S.current.it_specialist_mobile,
    'image': 'it_specialist',
    'pos': <int>[1, 2]
  },
];

class HomeTeam extends StatelessWidget with AppResponsiveScreen {
  const HomeTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return buildResponsiveScreen(context);
  }

  @override
  Widget buildDesktop(BuildContext context) {
    return const HomeTeamDesktop();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const HomeTeamMobile();
  }

  @override
  Widget buildTablet(BuildContext context) {
    return const HomeTeamDesktop();
  }
}

class HomeTeamDesktop extends StatelessWidget {
  const HomeTeamDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (Rect bounds) => LinearGradient(colors: <Color>[
            AppColors.white,
            AppColors.primary,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
              .createShader(
            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
          ),
          child: Text(
            '7 ${S.current.co_founders}',
            textAlign: TextAlign.center,
            style: AppTextStyles.getHeadingStyle(AppTextStyles.zendots).copyWith(color: AppColors.primary),
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        buildMembers(context),
      ],
    );
  }

  Widget buildMembers(BuildContext context) {
    return SizedBox(
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: InfiniteCarousel.builder(
        itemCount: _team.length,
        scrollBehavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: <PointerDeviceKind>{
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse
          },
        ),
        itemExtent: 250,
        anchor: 0.9,
        itemBuilder: (BuildContext context, int itemIndex, int realIndex) {
          return buildMember(_team[itemIndex]);
        },
      ),
    );
  }

  Widget buildMember(Map<String, String> member) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          HexagonWidget.pointy(
            width: 200,
            color: AppColors.primary,
            cornerRadius: 30,
            child: Image.asset(
              AppImages.jpg(member['image']!),
              fit: BoxFit.cover,
              width: 200,
              height: 250,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            member['name']!,
            style: AppTextStyles.getXlStyle(AppTextStyles.zendots),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class HomeTeamMobile extends StatelessWidget {
  const HomeTeamMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 30,
        ),
        ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (Rect bounds) => LinearGradient(colors: <Color>[
            AppColors.white,
            AppColors.primary,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
              .createShader(
            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
          ),
          child: Text(
            '7 ${S.current.co_founders}',
            textAlign: TextAlign.center,
            style: AppTextStyles.get2xlPlusStyle(AppTextStyles.zendots).copyWith(color: AppColors.primary),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        buildMembers(),
      ],
    );
  }

  Widget buildMembers() {
    return SizedBox(
      width: 430,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          HexagonOffsetGrid.evenFlat(
            columns: 3,
            rows: 3,
            buildTile: (int col, int row) {
              if (row >= 2 && col != 1) {
                return HexagonWidgetBuilder.transparent();
              }
              final Map<String, dynamic> member = _teamInMobile
                  .firstWhere((Map<String, dynamic> element) => element['pos'][0] == col && element['pos'][1] == row);
              return HexagonWidgetBuilder(
                color: AppColors.primary,
                cornerRadius: 10,
                padding: 3,
                elevation: 2,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          colors: <Color>[
                            AppColors.white,
                            AppColors.primary,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ).createShader(
                          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                        );
                      },
                      child: Image.asset(
                        AppImages.jpg(member['image']!.toString()),
                        fit: BoxFit.cover,
                        width: 350,
                        height: 350,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const SizedBox(
                          height: 60,
                        ),
                        Text(
                          member['name']!.toString().toUpperCase(),
                          style: AppTextStyles.getXsStyle(AppTextStyles.zendots).copyWith(
                            color: AppColors.white,
                            fontSize: 10,
                            shadows: <Shadow>[
                              Shadow(
                                color: AppColors.black,
                                offset: const Offset(0, 1),
                                blurRadius: 1,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
