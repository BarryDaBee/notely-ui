import 'package:flutter/material.dart';
import 'package:notely/src/core/constants/constants.dart';
import 'package:notely/src/core/extensions/extensions.dart';

class SelectableSubscriptionPlanCard<T> extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onSelected;
  final String title;
  final String price;
  final String subtitle;
  const SelectableSubscriptionPlanCard(
      {Key? key,
      required this.isSelected,
      required this.onSelected,
      required this.title,
      required this.price,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onSelected,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 150.radius,
        width: 150.radius,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.radius),
          color: AppColors.whiteDF,
          border: isSelected
              ? Border.all(
                  color: AppColors.lightOrange,
                  width: 6.radius,
                )
              : Border.all(color: AppColors.silver, width: 1.radius),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: AppTextStyles.body.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.darkBrown5A,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              price,
              style: AppTextStyles.header2.copyWith(
                fontWeight: FontWeight.w900,
                fontSize: 28.scalablePixels,
                color: AppColors.darkBrown5A,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              subtitle,
              style: AppTextStyles.bodyTwo.copyWith(
                fontWeight: FontWeight.w800,
                color: AppColors.darkBrown5A,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
