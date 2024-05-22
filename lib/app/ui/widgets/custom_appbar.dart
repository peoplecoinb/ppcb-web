import 'package:flutter/material.dart';

import '../../constants/app_values.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.title, this.backgroundColor = Colors.blue});
  final String title;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16).copyWith(top: 16 + viewPaddingTop(context)),
      color: backgroundColor,
      child: Text(
        title,
      ),
    );
  }
}
