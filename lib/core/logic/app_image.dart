import 'package:flutter/material.dart';

class AppImage extends StatelessWidget {
  final String path;
  final double? height, width;
  final BoxFit fit;
  const AppImage(
    this.path, {
    super.key,
    this.height,
    this.width,
    this.fit = BoxFit.scaleDown,
  });

  @override
  Widget build(BuildContext context) {
     if (path.startsWith("http")) {
      return Image.network(
        path,
        fit: fit,
        height: height,
        width: width,
      );
    } else {
      return Image.asset(
        path,
        height: height,
        width: width,
        fit: fit,
      );
    }
  }
}
