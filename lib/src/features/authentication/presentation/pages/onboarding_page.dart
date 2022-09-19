import 'package:flutter/material.dart';
import 'package:notely/src/core/constants/constants.dart';
import 'package:notely/src/core/extensions/extensions.dart';
import 'package:notely/src/core/router/app_router.dart';
import 'package:notely/src/features/authentication/presentation/widgets/animated_indicator.dart';
import 'package:notely/src/shared/widgets/custom_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.width),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 63.height),
            Text(
              'NOTELY',
              style: AppTextStyles.header1,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 118.height),
            Image.asset(
              AppAssetsPath.windowBookPng,
              width: 268.radius,
              height: 197.radius,
            ),
            SizedBox(height: 28.height),
            Text(
              'World’s Safest And\nLargest Digital Notebook',
              style: AppTextStyles.header2,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12.height),
            Text(
              'Notely is the world’s safest, largest and intelligent digital notebook. Join over 10M+ users already using Notely.',
              style: AppTextStyles.body,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24.height),
            const Align(
              child: AnimatedIndicators(
                activeIndex: 0,
                length: 3,
              ),
            ),
            const Spacer(),
            CustomButton(
              text: 'GET STARTED',
              onTap: () {
                Navigator.of(context).pushNamed(AppRouter.signUp);
              },
            ),
            SizedBox(height: 20.height),
            Text(
              'Already have an account?',
              style: AppTextStyles.header3,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 39.height),
          ],
        ),
      ),
    );
  }
}
