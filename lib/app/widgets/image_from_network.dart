import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageFromNetwork extends StatelessWidget {
  const ImageFromNetwork({
    super.key,
    this.imageUrl,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    this.alignment = Alignment.center,
    this.memCacheWidth = 1088,
    this.fade = true,
  });
  final String? imageUrl;
  final BoxFit fit;
  final double? width;
  final double? height;
  final Alignment alignment;
  final int memCacheWidth;
  final bool fade;

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null) {
      return Container(
        color: Colors.grey.shade200,
        width: width,
        height: height,
      );
    }
    return CachedNetworkImage(
      memCacheWidth: memCacheWidth,
      imageUrl: imageUrl!,
      fit: fit,
      width: width,
      height: height,
      fadeInDuration: Duration(milliseconds: fade ? 300 : 0),
      fadeOutDuration: Duration(milliseconds: fade ? 800 : 0),
      alignment: alignment,
      errorWidget: (BuildContext context, String url, dynamic error) =>
          const Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Icon(Icons.error),
        ),
      ),
    );
  }
}
