import 'package:flutter/material.dart';
import 'package:flutter_earth_globe/flutter_earth_globe.dart';
import 'package:flutter_earth_globe/flutter_earth_globe_controller.dart';
import 'package:flutter_earth_globe/sphere_style.dart';
import 'package:get/get.dart';
// import 'package:pretty_qr_code/pretty_qr_code.dart';
// import 'package:url_launcher/url_launcher.dart';

import '../../constants/constants.dart';
import '../navigation/widget/app_navigation_bar.dart';
import '../ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with AppResponsiveScreen {
  final ScrollController scrollController = ScrollController();
  final FlutterEarthGlobeController _controller = FlutterEarthGlobeController(
    isRotating: true,
    rotationSpeed: 0.01,
    zoom: 0.9,
    background: Image.asset(AppImages.jpg('2k_stars_milky_way')).image,
    isBackgroundFollowingSphereRotation: true,
    sphereStyle: SphereStyle(shadowColor: AppColors.black, shadowBlurSigma: 200),
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return buildResponsiveScreen(context);
  }

  @override
  Widget buildDesktop(BuildContext context) {
    return Scrollbar(
      controller: scrollController,
      thumbVisibility: true,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        controller: scrollController,
        child: SizedBox(
          width: Get.width,
          child: Column(
            children: <Widget>[
              buildTopBg(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTopBg() {
    return SizedBox(
      width: Get.width,
      height: 700,
      child: Stack(
        children: <Widget>[
          // SizedBox(
          //   width: Get.width,
          //   height: 700,
          //   child: FittedBox(
          //     fit: BoxFit.fitWidth,
          //     child: IgnorePointer(
          //       child: FlutterEarthGlobe(
          //         controller: _controller,
          //         radius: 120,
          //       ),
          //     ),
          //   ),
          // ),
          Container(
            height: 700,
            width: Get.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.transparent,
                  AppColors.primary,
                ],
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            alignment: Alignment.topCenter,
            child: AppNavigationBar(),
          ),
        ],
      ),
    );
  }

  @override
  Widget buildMobile(BuildContext context) {
    return buildDesktop(context);
  }

  @override
  Widget buildTablet(BuildContext context) {
    return buildDesktop(context);
  }
}
