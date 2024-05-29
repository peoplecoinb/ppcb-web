import 'package:flutter/material.dart';

class AnimatedHideHeader extends StatefulWidget {
  const AnimatedHideHeader({super.key, required this.scrollController, required this.child});
  final ScrollController scrollController;
  final Widget child;

  @override
  State<AnimatedHideHeader> createState() => _AnimatedHideHeaderState();
}

class _AnimatedHideHeaderState extends State<AnimatedHideHeader> {
  bool isShow = false;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(() {
      if (widget.scrollController.offset < 50) {
        if (isShow) {
          setState(() {
            isShow = false;
          });
        }
      } else {
        if (!isShow) {
          setState(() {
            isShow = true;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isShow ? 1 : 0,
      duration: const Duration(milliseconds: 300),
      child: isShow ? widget.child : const SizedBox(),
    );
  }
}
