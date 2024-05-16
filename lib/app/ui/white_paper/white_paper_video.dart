import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';


class WhitePaperVideo extends StatefulWidget {
  const WhitePaperVideo({super.key, required this.videoId});
  final String videoId;

  @override
  State<WhitePaperVideo> createState() => _WhitePaperVideoState();
}

class _WhitePaperVideoState extends State<WhitePaperVideo> {
  final YoutubePlayerController videoController = YoutubePlayerController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      videoController.loadVideoById(videoId: widget.videoId);
      return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: YoutubePlayer(
          aspectRatio: 2,
          controller: videoController, // Controler that we created earlier
        ),
      );
    });
  }

  @override
  void dispose() {
    videoController.stopVideo();
    super.dispose();
  }
}
