import 'package:flutter/material.dart';

import '../navigation/widget/app_navigation_bar.dart';
import '../ui.dart';
import 'widget/home_presale_board.dart';
import 'widget/home_presale_head.dart';
import 'widget/home_roadmap.dart';
import 'widget/home_team.dart';
import 'widget/top_background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, this.childPage});
  final String? childPage;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with AppResponsiveScreen {
  ScrollController get scrollController => NavigationProvider.of(context).scrollController;
  @override
  void initState() {
    Future<void>.delayed(const Duration(milliseconds: 500), firstScroll);
    super.initState();
  }

  void firstScroll() {
    switch (widget.childPage) {
      case 'roadmap':
        scrollController.animateTo(
          scrollController.position.maxScrollExtent * 0.6,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );
        break;
      case 'team':
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );
        break;
      default:
        scrollController.animateTo(
          scrollController.position.minScrollExtent,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return buildResponsiveScreen(context);
  }

  @override
  Widget buildDesktop(BuildContext context) {
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
    );
  }

  @override
  Widget buildMobile(BuildContext context) {
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
          SizedBox(
            height: 16,
          ),
          TopBackground(
            showBlur: false,
            isDynamicHeigh: true,
            child: HomePresaleBoard(),
          ),
          SizedBox(
            height: 32,
          ),
          TopBackground(
            isDynamicHeigh: true,
            child: Column(
              children: <Widget>[
                HomeRoadmap(),
                SizedBox(
                  height: 16,
                ),
                HomeTeam(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget buildTablet(BuildContext context) {
    return buildDesktop(context);
  }
}
