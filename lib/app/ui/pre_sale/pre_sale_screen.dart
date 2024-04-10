import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_earth_globe/flutter_earth_globe.dart';
import 'package:flutter_earth_globe/flutter_earth_globe_controller.dart';
import 'package:flutter_earth_globe/sphere_style.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';
import '../../extensions/hex_color.dart';

class PreSaleScreen extends StatefulWidget {
  const PreSaleScreen({super.key});

  @override
  State<PreSaleScreen> createState() => _PreSaleScreenState();
}

class _PreSaleScreenState extends State<PreSaleScreen> {
  final FlutterEarthGlobeController _controller = FlutterEarthGlobeController(
    isRotating: true,
    rotationSpeed: 0.01,
    zoom: 1.3,
    background: Image.asset(AppImages.jpg('2k_stars_milky_way')).image,
    // surface: Image.asset(AppImages.jpg('2k_stars_milky_way')).image,
    isBackgroundFollowingSphereRotation: true,
    sphereStyle: SphereStyle(shadowColor: AppColors.black, shadowBlurSigma: 200),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
          child: FlutterEarthGlobe(
            controller: _controller,
            radius: 120,
          ),
        ),
        Center(
          child: buildPresaleHeader(),
        ),
      ],
    );
  }

  Widget buildClock() {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Image.asset(
          AppImages.png('glow'),
          height: 180,
          width: 500,
          fit: BoxFit.fill,
        ),
        Container(
          height: 120,
          width: 420,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: HexColor.fromHex('#28272F'),
            border: Border.all(
              color: AppColors.warring,
              width: 1.5,
            ),
            gradient: LinearGradient(
              colors: <Color>[
                HexColor.fromHex('#28272F'),
                HexColor.fromHex('#040404'),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: TimerCountdown(
              endTime: DateTime(2024, 6, 8, 23, 23, 59).toUtc(),
              timeTextStyle: AppTextStyles.getHeadingStyle(AppTextStyles.zendots),
              descriptionTextStyle: AppTextStyles.getXlStyle(AppTextStyles.bold),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPresaleHeader() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          'presale_title'.tr,
          style: AppTextStyles.getHeadingStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          width: 16,
        ),
        buildClock(),
      ],
    );
  }
}
