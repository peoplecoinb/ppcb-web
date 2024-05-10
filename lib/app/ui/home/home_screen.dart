import 'package:flutter/material.dart';
// import 'package:pretty_qr_code/pretty_qr_code.dart';
// import 'package:url_launcher/url_launcher.dart';

import '../navigation/widget/app_navigation_bar.dart';
import '../ui.dart';
import 'widget/home_presale_board.dart';
import 'widget/home_presale_head.dart';
import 'widget/home_roadmap.dart';
import 'widget/home_team.dart';
import 'widget/top_background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with AppResponsiveScreen {
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
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        controller: NavigationProvider.of(context).scrollController,
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
            SizedBox(
              height: 16,
            ),
            TopBackground(
              showBlur: false,
              child: HomePresaleBoard(),
            ),  
            TopBackground(
              isDynamicHeigh: true,
              child: Column(
                children: <Widget>[
                  HomeRoadmap(),
                  SizedBox(
                    height: 100,
                  ),
                  HomeTeam(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget buildMobile(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        controller: NavigationProvider.of(context).scrollController,
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
            SizedBox(
              height: 16,
            ),
            TopBackground(
              showBlur: false,
              isDynamicHeigh: true,
              child: HomePresaleBoard(),
            ),
            TopBackground(
              isDynamicHeigh: true,
              child: HomeTeam(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget buildTablet(BuildContext context) {
    return buildDesktop(context);
  }
}
