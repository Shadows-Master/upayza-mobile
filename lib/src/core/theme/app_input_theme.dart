import 'package:flutter/material.dart';
import 'package:upayza/src/shared/constants/app_colors_scheme.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';

class AppInputTheme {
  AppInputTheme._();

  static InputDecorationTheme inputDecorationTheme(
          {required ColorScheme colorScheme}) =>
      InputDecorationTheme(
        border: _outlineInputBorder(colorScheme.secondary),
        focusedBorder: _outlineInputBorder(
          AppColorsScheme.lightColorScheme.secondary,
        ),
        errorBorder: _outlineInputBorder(colorScheme.error),
        enabledBorder: _outlineInputBorder(
          colorScheme.secondary,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppDimens.spacing,
          vertical: AppDimens.spacing,
        ),
      );

  static OutlineInputBorder _outlineInputBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimens.borderRadius),
      borderSide: BorderSide(
        color: color,
        width: .71,
      ),
      gapPadding: 12,
    );
  }
}
