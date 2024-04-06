import 'package:flutter/material.dart';
import 'package:flutter_earth_globe/flutter_earth_globe.dart';
import 'package:flutter_earth_globe/flutter_earth_globe_controller.dart';
import 'package:flutter_earth_globe/sphere_style.dart';
import 'package:get/get.dart';
// import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants/constants.dart';
import '../ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with AppResponsiveScreen {
  final FlutterEarthGlobeController _controller = FlutterEarthGlobeController(
    isRotating: true,
    rotationSpeed: 0.1,
    zoom: 1.3,
    background: Image.asset(AppImages.jpg('2k_stars_milky_way')).image,
    surface: Image.asset(AppImages.jpg('2k_venus_surface')).image,
    isBackgroundFollowingSphereRotation: true,  
    sphereStyle: SphereStyle(
      shadowColor: AppColors.warring,
      shadowBlurSigma: 200
    )
  );

  final Shadow textShadow = Shadow(
    color: Colors.black.withOpacity(0.8),
    offset: const Offset(0, 4),
    blurRadius: 4,
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Container(
        color: AppColors.black,
        child: buildResponsiveScreen(context),
      ),
    );
  }

  Widget buildButtonPreSales() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: <Color>[Colors.deepPurple, AppColors.primary.shade600],
        ),
      ),
      child: CustomOutlinedButton(
        title: 'home_pre_sales'.tr,
        action: () {
          launchUrl(
            Uri.parse('https://pancakeswap.finance/swap?outputCurrency=0xa5aFeBa0018a6fDa96712126ce346C007F000B26'),
            mode: LaunchMode.externalNonBrowserApplication,
          );
        },
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
        radius: 20,
        textColor: AppColors.white,
        backgroundColor: Colors.transparent,
        borderColor: Colors.transparent,
        textStyle: AppTextStyles.getHeadingStyle(AppTextStyles.zendots),
      ),
    );
  }

  @override
  Widget buildDesktop(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
          // child: GifView.asset(
          //   width: 500,
          //   height: 500,
          //   fit: BoxFit.contain,
          //   AppImages.gif('globe'),
          // ),
          child: FlutterEarthGlobe(
              controller: _controller,
              radius: 120,
            ),
        ),
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'home_slogan'.tr.toUpperCase(),
                style: AppTextStyles.getHeadingStyle(
                  AppTextStyles.zendots.copyWith(
                    color: AppColors.white,
                    shadows: <Shadow>[textShadow],
                  ),
                ).copyWith(
                  fontSize: 60,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              buildButtonPreSales()
            ],
          ),
        )
      ],
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
