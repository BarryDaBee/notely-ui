import 'package:flutter/material.dart';
import 'package:notely/src/core/constants/constants.dart';
import 'package:notely/src/core/extensions/extensions.dart';

class AnimatedIndicators extends StatelessWidget {
  final int length;
  final int activeIndex;
  final Color color;
  final Color? inactiveColor;
  final Size? activeSize;
  final Size? inactiveSize;
  const AnimatedIndicators({
    Key? key,
    required this.length,
    this.color = AppColors.orange,
    required this.activeIndex,
    this.inactiveColor,
    this.activeSize,
    this.inactiveSize,
  }) : super(key: key);

  final _duration = const Duration(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(length, (index) {
        if (index == activeIndex) {
          return _activeContainer();
        }
        return _inactiveContainer();
      }),
    );
  }

  Widget _activeContainer() {
    return AnimatedContainer(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.radius),
        color: color,
      ),
      margin: EdgeInsets.only(right: 6.width),
      duration: _duration,
      height: activeSize?.height ?? 10.radius,
      width: activeSize?.width ?? 10.radius,
    );
  }

  Widget _inactiveContainer() {
    return AnimatedContainer(
      duration: _duration,
      margin: EdgeInsets.only(right: 6.width),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.radius),
        color: inactiveColor ?? color.withOpacity(0.5),
      ),
      height: activeSize?.height ?? 8.radius,
      width: activeSize?.width ?? 8.radius,
    );
  }
}
