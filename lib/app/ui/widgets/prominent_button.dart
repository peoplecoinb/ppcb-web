import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../ui.dart';

class ProminentButton extends StatefulWidget {
  const ProminentButton({
    super.key,
    required this.title,
    this.textStyle,
    required this.radius,
    this.padding,
    this.shadowColor,
    this.action,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
  });

  final String title;
  final TextStyle? textStyle;
  final double radius;
  final EdgeInsets? padding;
  final Color? shadowColor;
  final Function()? action;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;

  @override
  State<ProminentButton> createState() => _ProminentButtonState();
}

class _ProminentButtonState extends State<ProminentButton> with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(milliseconds: 1000));
  late final Animation<double> _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

  @override
  void initState() {
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
    return RepaintBoundary(
      child: AnimatedBuilder(
        animation: _animation,
        builder: (BuildContext context, Widget? child) {
          return AnimatedContainer(
            duration: _controller.duration!,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.radius),
              color: Colors.transparent,
              boxShadow: <BoxShadow>[
                for (int i = 0; i < 30 * _animation.value; i++)
                  BoxShadow(
                    color: (widget.shadowColor ?? AppColors.primary).withOpacity(_animation.value),
                    blurRadius: 20 * _animation.value,
                    spreadRadius: 0.5 * _animation.value,
                  ),
              ],
            ),
            child: child,
          );
        },
        child: CustomOutlinedButton(
          title: widget.title,
          action: widget.action,
          textStyle: widget.textStyle,
          radius: widget.radius,
          padding: widget.padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          backgroundColor: widget.backgroundColor,
          textColor: widget.textColor,
          borderColor: widget.borderColor,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: AppColors.black.withOpacity(0.7),
              blurRadius: 20,
              spreadRadius: 0.5,
              offset: const Offset(0, 5),
            ),
          ],
        ),
      ),
    );
  }
}
