import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/constants/app_colors_scheme.dart';
import 'package:upayza/src/shared/constants/app_string.dart';

class AppConstants{
  AppConstants._();
  static ColorScheme appColors = AppColorsScheme.lightColorScheme;
  static double amount = 70.95;
  static AppTitle successTitle = const AppTitle(
    title: AppString.transactionSuccess,
    color: Colors.teal,
    fontWeight: FontWeight.w800,
  );
  static AppTitle failedTitle = AppTitle(
    title: AppString.transactionFail,
    color: appColors.error,
    fontWeight: FontWeight.w800,
  );
  static String dateAgo = Jiffy.parseFromDateTime(DateTime(2023, 10, 20)).fromNow();

}