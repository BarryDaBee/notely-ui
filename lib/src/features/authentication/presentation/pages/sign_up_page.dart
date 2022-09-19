import 'package:flutter/material.dart';
import 'package:notely/src/core/constants/constants.dart';
import 'package:notely/src/core/extensions/extensions.dart';
import 'package:notely/src/core/router/app_router.dart';
import 'package:notely/src/features/authentication/presentation/widgets/custom_textfield.dart';
import 'package:notely/src/shared/widgets/custom_button.dart';
import 'package:notely/src/shared/widgets/dismiss_keyboard.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 28.width),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(height: 63.height),
              Text(
                'NOTELY',
                style: AppTextStyles.header1,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 62.height),
              Text(
                'Create a free account',
                style: AppTextStyles.header2,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 5.height),
              Text(
                'Join Notely for free. Create and share unlimited notes with your friends.',
                style: AppTextStyles.body,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 52.height),
              const CustomTextField(label: 'Full Name'),
              SizedBox(height: 21.height),
              const CustomTextField(label: 'Email Address'),
              SizedBox(height: 21.height),
              const CustomTextField(
                label: 'Password',
                textFieldType: TextFieldType.password,
              ),
              SizedBox(height: 85.height),
              CustomButton(
                text: 'Create Account',
                onTap: () {
                  Navigator.of(context).pushNamed(AppRouter.subscribe);
                },
              ),
              SizedBox(height: 20.height),
              Text(
                'Already have an account?',
                style: AppTextStyles.header3,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
