import 'package:flutter/material.dart';
import 'package:notely/src/core/constants/constants.dart';
import 'package:notely/src/core/extensions/extensions.dart';
import 'package:notely/src/core/router/app_router.dart';
import 'package:notely/src/features/authentication/presentation/widgets/checkmark_bullet_point.dart';
import 'package:notely/src/features/authentication/presentation/widgets/selectable_subscription_plan_card.dart';
import 'package:notely/src/shared/widgets/custom_button.dart';
import 'package:notely/src/shared/widgets/svg_renderer.dart';

class SubscribePage extends StatefulWidget {
  const SubscribePage({Key? key}) : super(key: key);

  @override
  State<SubscribePage> createState() => _SubscribePageState();
}

class _SubscribePageState extends State<SubscribePage> {
  final selectedPaymentPlan = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.width),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 63.height),
              Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: Text(
                      'Notely Premium',
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
                          AppAssetsPath.closeSvg,
                          width: 14.34.radius,
                          height: 14.34.radius,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 28.5.height),
              Image.asset(
                AppAssetsPath.notelyPremiumPng,
                height: 120.radius,
                width: 162.height,
              ),
              SizedBox(height: 17.height),
              Text(
                'Start Using Notely\nwith Premium Benefits',
                style: AppTextStyles.header2,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 26.height),
              const CheckmarkBulletPoint(
                text: 'Save unlimited notes to a single project',
              ),
              SizedBox(height: 16.height),
              const CheckmarkBulletPoint(
                text: 'Create unlimited projects and teams',
              ),
              SizedBox(height: 16.height),
              const CheckmarkBulletPoint(
                text: 'Daily backups to keep your data safe',
              ),
              SizedBox(height: 33.height),
              ValueListenableBuilder<int>(
                valueListenable: selectedPaymentPlan,
                builder: (context, value, child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SelectableSubscriptionPlanCard(
                        isSelected: value == 0,
                        title: 'Annual',
                        onSelected: () {
                          if (value != 0) {
                            selectedPaymentPlan.value = 0;
                          }
                        },
                        price: '\$79.99',
                        subtitle: 'per year',
                      ),
                      SelectableSubscriptionPlanCard(
                        isSelected: value == 1,
                        title: 'Monthly',
                        onSelected: () {
                          if (value != 1) {
                            selectedPaymentPlan.value = 1;
                          }
                        },
                        price: '\$7.99',
                        subtitle: 'per month',
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 37.height),
              CustomButton(
                text: 'SUBSCRIBE',
                onTap: () {
                  Navigator.of(context).pushNamed(AppRouter.createFirstNote);
                },
              ),
              SizedBox(height: 20.height),
              Text(
                'Restore Purchase',
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
