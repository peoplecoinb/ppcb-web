import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../extensions/extensions.dart';
import '../home/widget/home_footer_bar.dart';
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

class _NavigationScreenState extends State<NavigationScreen> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const AppMenuDrawer(),
      body: NavigationProvider(
        scrollController: scrollController,
        child: Stack(
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: widget.child,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const HomeFooterBar(),
                  ],
                ),
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
                  ),
                  child: const AppNavigationBar(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationProvider extends InheritedWidget {
  const NavigationProvider({super.key, required super.child, required this.scrollController});
  final ScrollController scrollController;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }

  static NavigationProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<NavigationProvider>()!;
  }
}
