import 'package:flutter/material.dart';
import 'package:notely/src/core/constants/constants.dart';
import 'package:notely/src/core/extensions/extensions.dart';
import 'package:notely/src/features/account_information/presentation/widgets/profile_list_tile.dart';
import 'package:notely/src/shared/widgets/svg_renderer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 63.height),
          Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                left: 24.width,
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
                  'NOTELY',
                  style: AppTextStyles.header1,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SizedBox(height: 44.height),
          Container(
            height: 160.radius,
            width: 160.radius,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFFE5D5C5),
              image: DecorationImage(
                image: AssetImage(AppAssetsPath.dummyAvatarPng),
              ),
            ),
          ),
          SizedBox(height: 20.height),
          Text(
            'Shambhavi Mishra',
            style: AppTextStyles.header2.copyWith(
              fontSize: 28.scalablePixels,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Lucknow, India',
            style: AppTextStyles.body,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.height),
          ProfileListTile(
            leading: SvgRenderer(
              AppAssetsPath.premiumSvg,
              height: 24.radius,
            ),
            title: 'Buy Premium',
          ),
          SizedBox(height: 24.height),
          ProfileListTile(
            leading: SvgRenderer(
              AppAssetsPath.pencilSvg,
              height: 24.radius,
            ),
            title: 'Edit Profile',
          ),
          SizedBox(height: 24.height),
          ProfileListTile(
            leading: SvgRenderer(
              AppAssetsPath.themeSvg,
              height: 24.radius,
            ),
            title: 'App Theme',
          ),
          SizedBox(height: 24.height),
          ProfileListTile(
            leading: SvgRenderer(
              AppAssetsPath.notificationSvg,
              height: 24.radius,
            ),
            title: 'Notifications',
          ),
          SizedBox(height: 24.height),
          ProfileListTile(
            leading: SvgRenderer(
              AppAssetsPath.securitySvg,
              height: 24.radius,
            ),
            title: 'Security',
          ),
          SizedBox(height: 24.height),
          ProfileListTile(
            leading: SvgRenderer(
              AppAssetsPath.logoutSvg,
              height: 24.radius,
            ),
            title: 'Log Out',
          ),
        ],
      ),
    );
  }
}
