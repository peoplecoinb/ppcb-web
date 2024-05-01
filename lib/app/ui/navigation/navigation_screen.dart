import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../blocs/application/application_cubit.dart';
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
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const AppMenuDrawer(),
      body: Stack(
        children: <Widget>[
          Scrollbar(
            controller: Get.find<ApplicationCubit>().scrollController,
            thumbVisibility: true,
            child: widget.child,
          ),
          AnimatedHideHeader(
            scrollController: Get.find<ApplicationCubit>().scrollController,
            child: PhysicalModel(
              color: AppColors.white,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: HexColor.fromHex('#11121B'),
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
