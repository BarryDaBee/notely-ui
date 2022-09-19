import 'package:flutter/material.dart';
import 'package:notely/src/core/constants/constants.dart';
import 'package:notely/src/core/extensions/extensions.dart';
import 'package:notely/src/shared/widgets/svg_renderer.dart';

class ProfileListTile extends StatelessWidget {
  final Widget leading;
  final String title;
  final VoidCallback? onTap;

  const ProfileListTile(
      {super.key, required this.leading, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.width),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.radius),
                color: AppColors.whiteDF,
              ),
              padding: EdgeInsets.all(6.radius),
              height: 36.radius,
              width: 36.radius,
              child: leading,
            ),
            SizedBox(width: 12.width),
            Text(
              title,
              style: AppTextStyles.body.copyWith(
                letterSpacing: 0.4,
              ),
            ),
            const Spacer(),
            RotatedBox(
              quarterTurns: 2,
              child: SvgRenderer(AppAssetsPath.arrowLeftSvg),
            )
          ],
        ),
      ),
    );
  }
}
