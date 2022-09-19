import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgRenderer extends StatelessWidget {
  final String assetName;
  final Color? color;
  final double? height;
  final double? width;
  const SvgRenderer(this.assetName,
      {super.key, this.color, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      color: color,
      height: height,
      width: width,
    );
  }
}
