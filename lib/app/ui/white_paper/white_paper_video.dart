import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../blocs/application/application_cubit.dart';

class WhitePaperVideo extends StatefulWidget {
  const WhitePaperVideo({super.key, required this.videoId});
  final String videoId;

  @override
  State<WhitePaperVideo> createState() => _WhitePaperVideoState();
}

class _WhitePaperVideoState extends State<WhitePaperVideo> {

  @override
  void initState() {
    Get.find<ApplicationCubit>().videoController.loadVideoById(videoId: widget.videoId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: Get.find<ApplicationCubit>().videoController, // Controler that we created earlier
    );
  }
}
