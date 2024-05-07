import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../blocs/application/application_cubit.dart';
import '../ui.dart';

class WhitePaperVideo extends StatefulWidget {
  const WhitePaperVideo({super.key, required this.videoId});
  final String videoId;

  @override
  State<WhitePaperVideo> createState() => _WhitePaperVideoState();
}

class _WhitePaperVideoState extends State<WhitePaperVideo> with AppResponsiveScreen {
  @override
  void initState() {
    Get.find<ApplicationCubit>().videoController.loadVideoById(videoId: widget.videoId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return buildResponsiveScreen(context);
  }

  @override
  Widget buildDesktop(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: YoutubePlayer(
        aspectRatio: 2.5,
        controller: Get.find<ApplicationCubit>().videoController, // Controler that we created earlier
      ),
    );
  }

  @override
  Widget buildMobile(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: YoutubePlayer(
        aspectRatio: 1.5,
        controller: Get.find<ApplicationCubit>().videoController, // Controler that we created earlier
      ),
    );
  }

  @override
  Widget buildTablet(BuildContext context) {
    return buildDesktop(context);
  }
}
