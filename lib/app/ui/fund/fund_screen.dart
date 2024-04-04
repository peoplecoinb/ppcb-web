import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';

class FundScreen extends StatefulWidget {
  const FundScreen({super.key});

  @override
  State<FundScreen> createState() => _FundScreenState();
}

class _FundScreenState extends State<FundScreen> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.png('fund'),
      width: Get.width,
      fit: BoxFit.fill,
    );
  }
}
