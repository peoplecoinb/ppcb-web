import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/cupertino.dart';

class ImageViewer extends StatelessWidget {
  const ImageViewer({super.key, required this.image});
  final ImageProvider<Object> image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showImageViewer(context, image, onViewerDismissed: () {
        });
      },
      child: Image(image: image),
    );
  }
}
