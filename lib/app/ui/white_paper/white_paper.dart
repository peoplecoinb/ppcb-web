import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import 'white_paper_video.dart';

class WhitePaperScreen extends StatefulWidget {
  const WhitePaperScreen({super.key});

  @override
  State<WhitePaperScreen> createState() => _WhitePaperScreenState();
}

class _WhitePaperScreenState extends State<WhitePaperScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const SizedBox(
            width: DESKTOP_PAGE_MAX_WIDTH,
            height: DESKTOP_PAGE_MAX_HEIGHT,
            child: WhitePaperVideo(videoId: '6pLcrzsuiP4'),
          ),
          const Divider(),
          Image.asset(
            AppImages.png('white_paper'),
            width: DESKTOP_PAGE_MAX_WIDTH,
            height: DESKTOP_PAGE_MAX_HEIGHT,
            fit: BoxFit.fill,
          ),
          const Divider(),
          Image.asset(
            AppImages.png('mission'),
            width: DESKTOP_PAGE_MAX_WIDTH,
            height: DESKTOP_PAGE_MAX_HEIGHT,
            fit: BoxFit.fill,
          ),
          const Divider(),
          Image.asset(
            AppImages.png('partner'),
            width: DESKTOP_PAGE_MAX_WIDTH,
            height: DESKTOP_PAGE_MAX_HEIGHT,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
