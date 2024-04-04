import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({super.key});

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.png('team'),
      width: Get.width,
      fit: BoxFit.fill,
    );
  }
}
