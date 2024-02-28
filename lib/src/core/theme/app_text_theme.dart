import 'package:flutter/material.dart';
import 'package:upayza/generated/fonts.gen.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';

class AppTextTheme {
  AppTextTheme._();

  static textTheme({required ColorScheme colorScheme}) => TextTheme(
        displayLarge: TextStyle(
          fontFamily: FontFamily.radikal,
          fontSize: AppDimens.h0,
          color: colorScheme.tertiary,
          letterSpacing: .55,
          height: 1.6,
          fontWeight: FontWeight.w800,
        ),
        displayMedium: TextStyle(
          fontFamily: FontFamily.radikal,
          fontSize: AppDimens.h1,
          color: colorScheme.tertiary,
          letterSpacing: .55,
          height: 1.6,
          fontWeight: FontWeight.w800,
        ),
        displaySmall: TextStyle(
          fontFamily: FontFamily.radikal,
          fontSize: AppDimens.h2,
          color: colorScheme.tertiary,
          letterSpacing: .55,
          height: 1.6,
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
          fontFamily: FontFamily.radikal,
          fontSize: AppDimens.h3,
          color: colorScheme.tertiary,
          letterSpacing: .55,
          height: 1.6,
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          fontFamily: FontFamily.radikal,
          fontSize: AppDimens.h4,
          color: colorScheme.tertiary,
          letterSpacing: .55,
          height: 1.6,
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          fontFamily: FontFamily.radikal,
          fontSize: AppDimens.h5,
          color: colorScheme.tertiary,
          letterSpacing: .55,
          height: 1.6,
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          fontFamily: FontFamily.radikal,
          fontSize: AppDimens.h6,
          color: colorScheme.tertiary,
          letterSpacing: .55,
          height: 1.6,
          fontWeight: FontWeight.w700,
        ),
      );
}
