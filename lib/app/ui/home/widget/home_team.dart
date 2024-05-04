import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexagon/hexagon.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

import '../../../constants/constants.dart';

final List<Map<String, String>> _team = <Map<String, String>>[
  <String, String>{
    'name': 'economic_expert',
    'image': 'economic_expert',
  },
  <String, String>{
    'name': 'pharmacist',
    'image': 'pharmacist',
  },
  <String, String>{
    'name': 'design_director',
    'image': 'design_director',
  },
  <String, String>{
    'name': 'artist',
    'image': 'artist',
  },
  <String, String>{
    'name': 'factory_director',
    'image': 'factory_director',
  },
    <String, String>{
    'name': 'doctor',
    'image': 'doctor',
  },
    <String, String>{
    'name': 'it_specialist',
    'image': 'it_specialist',
  },
];

class HomeTeam extends StatelessWidget {
  const HomeTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 100,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const SizedBox(
                height: 50,
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
                  '7 ${'co_founders'.tr}',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.getHeadingStyle(AppTextStyles.zendots).copyWith(color: AppColors.primary),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              buildMembers(),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildMembers() {
    return SizedBox(
      height: 500,
      child: Center(
        child: InfiniteCarousel.builder(
          itemCount: _team.length,
          itemExtent: 250,
          itemBuilder: (BuildContext context, int itemIndex, int realIndex) {
            return buildMember(_team[itemIndex]);
          },
        ),
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
            member['name']!.tr,
            style: AppTextStyles.getXlStyle(AppTextStyles.zendots),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
