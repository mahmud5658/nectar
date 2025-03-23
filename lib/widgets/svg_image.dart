import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImage extends StatelessWidget {
  final String img;
  final double? width, height;
  final BoxFit? fit;
  final Color? color;

  const SvgImage({
    super.key,
    required this.img,
    this.width,
    this.height,
    this.fit,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      img,
      width: width,
      height: height,
      fit: fit ?? BoxFit.contain,
      colorFilter:
          color == null ? null : ColorFilter.mode(color!, BlendMode.srcIn),
    );
  }
}
