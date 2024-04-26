import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:pretty_qr_code/pretty_qr_code.dart';
// import 'package:url_launcher/url_launcher.dart';

import '../navigation/widget/app_navigation_bar.dart';
import 'widget/home_presale_head.dart';
import 'widget/top_background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
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
          SizedBox(height: 900,)
        ],
      ),
    );
  }
}
