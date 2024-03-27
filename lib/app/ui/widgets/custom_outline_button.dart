import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';


class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
    required this.title,
    this.action,
    this.textStyle,
    this.radius = 6,
    this.backgroundColor,
    this.borderColor,
    this.textColor,
    this.boxShadow,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8)
  });
  final VoidCallback? action;
  final String title;
  final double radius;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final List<BoxShadow>? boxShadow;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        boxShadow: boxShadow,
      ),
      child: OutlinedButton(
        onPressed: action,
        style: ButtonStyle(
          side: MaterialStateProperty.all(BorderSide(color: borderColor ?? Theme.of(context).primaryColor)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius))),
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor ?? Theme.of(context).primaryColor),
        ),
        child: Padding(
          padding: padding,
          child: Text(
            title.tr,
            style: (textStyle ?? AppTextStyles.getXlStyle(AppTextStyles.bold)).copyWith(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
