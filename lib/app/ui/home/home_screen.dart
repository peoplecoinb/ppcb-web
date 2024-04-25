import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
// import 'package:pretty_qr_code/pretty_qr_code.dart';
// import 'package:url_launcher/url_launcher.dart';

import '../../constants/constants.dart';
import '../navigation/widget/app_navigation_bar.dart';
import 'widget/home_presale_head.dart';
import 'widget/top_background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: scrollController,
      thumbVisibility: true,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        controller: scrollController,
        child: SizedBox(
          width: Get.width,
          child: const Column(
            children: <Widget>[
              TopBackground(
                child: Column(
                  children: <Widget>[
                    AppNavigationBar(),
                    SizedBox(
                      height: 32,
                    ),
                    Expanded(
                      child: HomePresaleHead(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
