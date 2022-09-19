import 'package:flutter/material.dart';
import 'package:notely/src/core/constants/constants.dart';
import 'package:notely/src/core/extensions/extensions.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  const CustomButton({super.key, this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.radius),
          color: AppColors.orange,
        ),
        height: 74.height,
        alignment: Alignment.center,
        child: Text(
          text,
          style: AppTextStyles.buttonStyle,
        ),
      ),
    );
  }
}
