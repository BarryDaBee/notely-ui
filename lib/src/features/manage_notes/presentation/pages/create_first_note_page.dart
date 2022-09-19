import 'package:flutter/material.dart';
import 'package:notely/src/core/constants/constants.dart';
import 'package:notely/src/core/extensions/extensions.dart';
import 'package:notely/src/core/router/app_router.dart';
import 'package:notely/src/shared/widgets/clickable_text.dart';
import 'package:notely/src/shared/widgets/custom_button.dart';
import 'package:notely/src/shared/widgets/svg_renderer.dart';

class CreateFirstNotePage extends StatelessWidget {
  const CreateFirstNotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      onTap: () {
                        Navigator.of(context).pushNamed(AppRouter.profile);
                      },
                      child: Padding(
                        padding: EdgeInsets.all(8.radius),
                        child: SvgRenderer(AppAssetsPath.menuSvg),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'All Notes',
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
                          AppAssetsPath.searchSvg,
                          width: 20.radius,
                          height: 20.radius,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.width),
                child: Column(
                  children: [
                    SizedBox(height: 127.height),
                    Image.asset(
                      AppAssetsPath.createNotePng,
                      width: 268.radius,
                      height: 221.radius,
                    ),
                    SizedBox(height: 39.height),
                    Text(
                      'Create Your First Note',
                      style: AppTextStyles.header2,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 5.height),
                    Text(
                      'Add a note about anything (your thoughts on climate change, or your history essay) and share it with the world.',
                      style: AppTextStyles.body,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 77.height),
                    CustomButton(
                      text: 'Create A Note',
                      onTap: () {
                        Navigator.of(context).pushNamed(AppRouter.editNote);
                      },
                    ),
                    SizedBox(height: 20.height),
                    ClickableText(
                      text: 'Import Notes',
                      onTap: () {
                        Navigator.of(context).pushNamed(AppRouter.recentNote);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
