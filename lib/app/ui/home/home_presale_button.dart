import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';
import '../../routes/app_route_delegate.dart';
import '../../routes/app_routes.dart';
import '../ui.dart';

class HomePresaleButton extends StatefulWidget {
  const HomePresaleButton({super.key});

  @override
  State<HomePresaleButton> createState() => _HomePresaleButtonState();
}

class _HomePresaleButtonState extends State<HomePresaleButton> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;
  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget? child) {
        return AnimatedContainer(
          padding: const EdgeInsets.all(8),
            duration: const Duration(milliseconds: 700),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: _animation.value > 0.66
                ? LinearGradient(
                    colors: <Color>[
                      Colors.deepPurple.withOpacity(0.7),
                      AppColors.primary.withOpacity(0.7),
                    ],
                  )
                : null,
          ),
          child: AnimatedContainer(
            padding: const EdgeInsets.all(8),
            duration: const Duration(milliseconds: 700),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: _animation.value > 0.33
                  ? LinearGradient(
                      colors: <Color>[
                        AppColors.primary.withOpacity(0.7),
                        Colors.deepPurple.withOpacity(0.7),
                      ],
                    )
                  : null,
            ),
            child: child,
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: <Color>[
              Colors.deepPurple,
              AppColors.primary,
            ],
          ),
        ),
        child: CustomOutlinedButton(
          title: 'home_pre_sales'.tr,
          action: () {
            AppRouteDelegate().toNamed(Routes.preSale.route);
          },
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          radius: 20,
          textColor: AppColors.white,
          backgroundColor: Colors.transparent,
          borderColor: Colors.transparent,
          textStyle: AppTextStyles.getHeadingStyle(AppTextStyles.zendots).copyWith(fontSize: 30),
        ),
      ),
    );
  }
}
