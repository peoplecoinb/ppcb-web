import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../extensions/extensions.dart';
import '../ui.dart';
import '../widgets/animated_hide_header.dart';
import 'widget/app_menu_drawer.dart';
import 'widget/app_navigation_bar.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key, required this.child});
  final Widget child;

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen>{
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const AppMenuDrawer(),
      body: Stack(
        children: <Widget>[

          Scrollbar(
            controller: scrollController,
            thumbVisibility: true,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              controller: scrollController,
              child: widget.child,
            ),
          ),
          AnimatedHideHeader(
            scrollController: scrollController,
            child: PhysicalModel(
              color: AppColors.white,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: HexColor.fromHex('#11121B'),
                  // gradient: LinearGradient(
                  //   begin: Alignment.topRight,
                  //   end: Alignment.bottomLeft,
                  //   colors: <Color>[
                  //     HexColor.fromHex('#1C1D33').withOpacity(0.95),
                  //     HexColor.fromHex('#1C1D33'),
                  //   ],
                  // ),
                ),
                child: const AppNavigationBar(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
