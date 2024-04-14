import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Image.asset(
            AppImages.png('app'),
            width: DESKTOP_PAGE_MAX_WIDTH,
            height: DESKTOP_PAGE_MAX_HEIGHT,
            fit: BoxFit.fill,
          ),
          const Divider(),
          Image.asset(
            AppImages.png('member'),
            width: DESKTOP_PAGE_MAX_WIDTH,
            height: DESKTOP_PAGE_MAX_HEIGHT,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
