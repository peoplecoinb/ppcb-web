import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';

class WhitePaperScreen extends StatefulWidget {
  const WhitePaperScreen({super.key});

  @override
  State<WhitePaperScreen> createState() => _WhitePaperScreenState();
}

class _WhitePaperScreenState extends State<WhitePaperScreen> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.png('white_paper'),
      width: Get.width,
      fit: BoxFit.fill,
    );
  }
}
