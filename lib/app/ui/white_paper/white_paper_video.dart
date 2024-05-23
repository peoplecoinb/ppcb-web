import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class WhitePaperVideo extends StatefulWidget {
  const WhitePaperVideo({super.key, required this.videoId});
  final String videoId;

  @override
  State<WhitePaperVideo> createState() => _WhitePaperVideoState();
}

class _WhitePaperVideoState extends State<WhitePaperVideo> {
  final YoutubePlayerController controller = YoutubePlayerController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: controller.loadVideo(widget.videoId),
      builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: YoutubePlayer(
              aspectRatio: 2,
              controller: controller, // Controler that we created earlier
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
