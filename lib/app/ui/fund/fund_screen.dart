import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class FundScreen extends StatefulWidget {
  const FundScreen({super.key});

  @override
  State<FundScreen> createState() => _FundScreenState();
}

class _FundScreenState extends State<FundScreen> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Image.asset(
            AppImages.png('fund'),
            width: DESKTOP_PAGE_MAX_WIDTH,
            height: DESKTOP_PAGE_MAX_HEIGHT,
            fit: BoxFit.fill,
          ),
          const Divider(),
          Image.asset(
            AppImages.png('token_allocation'),
            width: DESKTOP_PAGE_MAX_WIDTH,
            height: DESKTOP_PAGE_MAX_HEIGHT,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
