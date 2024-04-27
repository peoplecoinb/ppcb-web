import 'package:flutter/material.dart';

class HomeBannerIconAnimation extends StatefulWidget {
  const HomeBannerIconAnimation({super.key, this.direction = Axis.horizontal, required this.child});
  final Axis direction;
  final Widget child;

  @override
  State<HomeBannerIconAnimation> createState() => _HomeBannerIconAnimationState();
}

class _HomeBannerIconAnimationState extends State<HomeBannerIconAnimation> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2));
  late final Animation<double> _animation = Tween<double>(begin: 0, end: 2).animate(_controller);

  @override
  void initState() {
    _controller.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      child: widget.child,
      builder: (BuildContext context, Widget? child) {
        return Transform.translate(
          offset: widget.direction != Axis.vertical ? Offset(0, -10 * _animation.value) : Offset(-10 * _animation.value, 0),
          child: child,
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
