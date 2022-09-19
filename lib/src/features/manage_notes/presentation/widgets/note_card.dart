import 'package:flutter/material.dart';
import 'package:notely/src/core/constants/constants.dart';
import 'package:notely/src/core/extensions/extensions.dart';

class NoteCard extends StatelessWidget {
  final String title;
  final String body;
  const NoteCard({Key? key, required this.title, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.radius),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.radius),
        color: AppColors.whiteDF,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title.truncate(32),
            style: AppTextStyles.header3.copyWith(
              fontWeight: FontWeight.w900,
              color: AppColors.darkBrown59,
            ),
          ),
          SizedBox(height: 2.height),
          Text(
            body.truncate(150),
            style: AppTextStyles.bodyTwo.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.darkBrown5A,
            ),
          ),
        ],
      ),
    );
  }
}
