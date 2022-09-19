import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notely/src/core/constants/constants.dart';
import 'package:notely/src/core/extensions/extensions.dart';
import 'package:notely/src/shared/widgets/dismiss_keyboard.dart';
import 'package:notely/src/shared/widgets/svg_renderer.dart';

class EditNotePage extends StatelessWidget {
  const EditNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.width),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 63.height),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: Navigator.of(context).pop,
                        child: Padding(
                          padding: EdgeInsets.all(8.radius),
                          child: SvgRenderer(
                            AppAssetsPath.arrowLeftSvg,
                            height: 20.radius,
                            width: 11.45.radius,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Edit Note',
                        style: AppTextStyles.bodyTwo,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: Navigator.of(context).pop,
                        child: Padding(
                          padding: EdgeInsets.all(8.radius),
                          child: SvgRenderer(
                            AppAssetsPath.moreVerticalSvg,
                            width: 5.radius,
                            height: 20.radius,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 28.height),
                TextFormField(
                  style: AppTextStyles.header2,
                  cursorColor: AppColors.orange,
                  maxLines: null,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: const UnderlineInputBorder(),
                    hintText: 'Title',
                    hintStyle: AppTextStyles.header2.copyWith(
                      color: AppColors.darkBrown5A.withOpacity(0.4),
                    ),
                  ),
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(100),
                  ],
                ),
                TextFormField(
                  style: AppTextStyles.body.copyWith(
                    fontSize: 18.scalablePixels,
                  ),
                  textAlign: TextAlign.justify,
                  cursorColor: AppColors.orange,
                  maxLines: null,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Body',
                    hintStyle: AppTextStyles.body.copyWith(
                      color: AppColors.darkBrown5A.withOpacity(0.4),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
