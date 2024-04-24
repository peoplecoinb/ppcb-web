import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HoverText extends StatefulWidget {
  const HoverText({super.key, required this.text, required this.style, required this.hoverStyle, this.textAlign});
  final String text;
  final TextStyle style;
  final TextStyle hoverStyle;
  final TextAlign? textAlign;

  @override
  State<HoverText> createState() => _HoverTextState();
}

class _HoverTextState extends State<HoverText> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (PointerEnterEvent event) => setState(() => _hovering = true),
      onExit: (PointerExitEvent event) => setState(() => _hovering = false),
      child: Text(
        widget.text,
        style: _hovering ? widget.hoverStyle : widget.style,
        textAlign: widget.textAlign,
      ),
    );
  }
}
