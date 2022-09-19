import 'package:flutter/material.dart';
import 'package:notely/src/core/constants/constants.dart';
import 'package:notely/src/core/extensions/extensions.dart';

import '../../../../shared/widgets/svg_renderer.dart';

class CheckmarkBulletPoint extends StatelessWidget {
  final String text;
  const CheckmarkBulletPoint({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgRenderer(
          AppAssetsPath.checkmarkSvg,
          width: 12.radius,
          height: 8.92.radius,
        ),
        SizedBox(width: 12.width),
        Text(
          text,
          style: AppTextStyles.body.copyWith(
            color: AppColors.darkBrown5A,
          ),
        ),
        SizedBox(height: 16.height),
      ],
    );
  }
}
