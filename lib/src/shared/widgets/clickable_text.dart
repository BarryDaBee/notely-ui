import 'package:flutter/material.dart';
import 'package:notely/src/core/constants/constants.dart';

class ClickableText extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const ClickableText({Key? key, this.onTap, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Text(
        text,
        style: AppTextStyles.header3,
        textAlign: TextAlign.center,
      ),
    );
  }
}
