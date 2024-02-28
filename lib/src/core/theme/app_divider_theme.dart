import 'package:flutter/material.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';

class AppDividerTheme {
  AppDividerTheme._();
  static dividerTheme({required ColorScheme colorScheme}) => DividerThemeData(
        space: 1,
        color: colorScheme.secondaryContainer,
        indent: AppDimens.padding,
        endIndent: AppDimens.padding,
        thickness: 1,
      );
}
