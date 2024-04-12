import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_earth_globe/flutter_earth_globe.dart';
import 'package:flutter_earth_globe/flutter_earth_globe_controller.dart';
import 'package:flutter_earth_globe/sphere_style.dart';

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
        const Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                PreSaleComponent(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
