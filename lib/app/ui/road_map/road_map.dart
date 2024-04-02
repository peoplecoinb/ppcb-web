import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';

class RoadMapScreen extends StatefulWidget {
  const RoadMapScreen({super.key});

  @override
  State<RoadMapScreen> createState() => _RoadMapScreenState();
}

class _RoadMapScreenState extends State<RoadMapScreen> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.png('road_map'),
      width: Get.width,
      fit: BoxFit.fill,
    );
  }
}
