import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_earth_globe/flutter_earth_globe.dart';
import 'package:flutter_earth_globe/flutter_earth_globe_controller.dart';
import 'package:flutter_earth_globe/sphere_style.dart';

import '../../constants/app_images.dart';
import '../../constants/constants.dart';
import 'widget/pre_sale_component.dart';

class PreSaleScreen extends StatefulWidget {
  const PreSaleScreen({super.key});

  @override
  State<PreSaleScreen> createState() => _PreSaleScreenState();
}

class _PreSaleScreenState extends State<PreSaleScreen> {
  final FlutterEarthGlobeController _controller = FlutterEarthGlobeController(
    isRotating: true,
    rotationSpeed: 0.01,
    zoom: 0.9,
    background: Image.asset(AppImages.jpg('2k_stars_milky_way')).image,
    isBackgroundFollowingSphereRotation: true,
    sphereStyle: SphereStyle(shadowColor: AppColors.black, shadowBlurSigma: 200),
  );
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        IgnorePointer(
          child: Center(
            child: FlutterEarthGlobe(
              controller: _controller,
              radius: 120,
            ),
          ),
        ),
        Center(
          child: Scrollbar(
            thumbVisibility: true,
            controller: scrollController,
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 50,),
                  const PreSaleComponent(),
                  InkWell(
                    onTap: (){
                      scrollController.animateTo(scrollController.position.maxScrollExtent, duration: const Duration(microseconds: 150000), curve: Curves.easeIn);
                    },
                    child: const Icon(Icons.arrow_drop_down_sharp, size: 75,),
                  ),
                  const SizedBox(height: 50,),
                  Image.asset(AppImages.png('presale_campaign'), width: DESKTOP_PAGE_MAX_WIDTH, height: DESKTOP_PAGE_MAX_HEIGHT, fit: BoxFit.fitHeight,)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
