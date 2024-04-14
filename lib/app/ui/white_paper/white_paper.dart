import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';

class WhitePaperScreen extends StatefulWidget {
  const WhitePaperScreen({super.key});

  @override
  State<WhitePaperScreen> createState() => _WhitePaperScreenState();
}

class _WhitePaperScreenState extends State<WhitePaperScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Image.asset(
            AppImages.png('white_paper'),
            width: DESKTOP_PAGE_MAX_WIDTH,
            height: DESKTOP_PAGE_MAX_HEIGHT,
            fit: BoxFit.fill,
          ),
          const Divider(),
          Image.asset(
            AppImages.png('mission'),
            width: DESKTOP_PAGE_MAX_WIDTH,
            height: DESKTOP_PAGE_MAX_HEIGHT,
            fit: BoxFit.fill,
          ),
          const Divider(),
          Image.asset(
            AppImages.png('partner'),
            width: DESKTOP_PAGE_MAX_WIDTH,
            height: DESKTOP_PAGE_MAX_HEIGHT,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
