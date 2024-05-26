import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_images.dart';
import 'top_background.dart';

class HomeFooterBar extends StatelessWidget {
  const HomeFooterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            AppColors.primary,
            AppColors.black,
          ],
        ),
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(AppImages.png('telegram_logo')),
            const SizedBox(width: 20,),
            Image.asset(AppImages.png('youtube_logo')),
          ],
        ),
      ),
    );
  }
}
