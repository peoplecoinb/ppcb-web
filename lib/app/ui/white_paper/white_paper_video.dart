import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class WhitePaperVideo extends StatefulWidget {
  const WhitePaperVideo({super.key, required this.videoId});
  final String videoId;

  @override
  State<WhitePaperVideo> createState() => _WhitePaperVideoState();
}

class _WhitePaperVideoState extends State<WhitePaperVideo> {
  YoutubePlayerController? controller = YoutubePlayerController();

  @override
  void initState() {
    controller!.loadVideoById(videoId: widget.videoId);
    controller!.stopVideo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: Future<void>.delayed(const Duration(milliseconds: 1000)),
      builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: YoutubePlayer(
            aspectRatio: 2,
            controller: controller!, // Controler that we created earlier
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    controller!.stopVideo();
    controller = null;
    super.dispose();
  }
}
