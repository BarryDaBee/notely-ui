import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notely/src/core/constants/app_colors.dart';
import 'package:notely/src/core/extensions/size_extension.dart';

///Class for managing application text styles
class AppTextStyles {
  const AppTextStyles._();

  static const _nunito = 'Nunito';

  static const _titanOne = 'TitanOne';

  static const _primaryFontColor = AppColors.darkBrown;

  static const _secondaryFontColor = AppColors.darkBrown59;

  ///header1 TextStyle
  ///- fontSize 20,
  static final header1 = TextStyle(
    fontFamily: _titanOne,
    fontSize: 20.sp,
    color: _primaryFontColor,
  );

  ///header2 TextStyle
  ///- fontSize 24,
  static final header2 = TextStyle(
    fontFamily: _nunito,
    fontSize: 24.scalablePixels,
    fontWeight: FontWeight.w900,
    color: _primaryFontColor,
  );

  ///header3 TextStyle
  ///- fontSize 16,
  static final header3 = TextStyle(
    fontFamily: _nunito,
    fontSize: 16.scalablePixels,
    fontWeight: FontWeight.w800,
    color: AppColors.orange,
  );

  ///bodyText TextStyle
  ///- fontSize 16,
  static final body = TextStyle(
    fontFamily: _nunito,
    fontSize: 16.scalablePixels,
    fontWeight: FontWeight.w700,
    color: _secondaryFontColor,
  );

  ///bodyText TextStyle
  ///- fontSize 16,
  static final bodyTwo = TextStyle(
    fontFamily: _nunito,
    fontSize: 14.scalablePixels,
    fontWeight: FontWeight.w900,
    color: _primaryFontColor,
  );

  ///subTitleText2 TextStyle
  ///- fontSize 12,
  static final buttonStyle = TextStyle(
    fontFamily: _nunito,
    fontSize: 20.scalablePixels,
    fontWeight: FontWeight.w900,
    letterSpacing: 1.2,
    color: AppColors.white,
  );

  ///subTitleText2 TextStyle
  ///- fontSize 12,
  static final textFieldLabelStyle = TextStyle(
    fontFamily: _nunito,
    fontSize: 12.scalablePixels,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.2,
    color: AppColors.darkBrown,
  );
}
