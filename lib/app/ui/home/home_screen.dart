import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/app_images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    // Future<void>.delayed(const Duration(seconds: 2), () {
    //   Get.toNamed(Routes.HOME);
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(AppImages.png('demo_bg'), fit: BoxFit.fill),
    );
  }
}
