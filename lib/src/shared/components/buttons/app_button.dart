import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:upayza/src/shared/constants/app_colors_scheme.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';

enum _ButtonType {
  primary,
  secondary,
}

class AppButton extends StatelessWidget {
  final String title;
  final IconData? icon;
  final bool? loading;
  final VoidCallback? onPressed;
  final _ButtonType _buttonType;

  const AppButton({
    super.key,
    required this.title,
    this.icon,
    this.onPressed,
    this.loading = false,
  }) : _buttonType = _ButtonType.primary;

  const AppButton.secondary({
    super.key,
    required this.title,
    this.icon,
    this.onPressed,
    this.loading = false,
  }) : _buttonType = _ButtonType.secondary;

  @override
  Widget build(BuildContext context) {
    late Color bgColor;
    late Color fgColor;

    switch (_buttonType) {
      case _ButtonType.primary:
        bgColor = context.colorScheme.primary;
        fgColor = context.colorScheme.onPrimary;
        break;
      case _ButtonType.secondary:
        bgColor = context.colorScheme.secondary;
        fgColor = context.colorScheme.onSecondary;
        break;
    }

    return SizedBox(
      height: AppDimens.btnSize,
      width: context.screenSize.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: fgColor,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimens.borderRadius),
            side: const BorderSide(
              width: 0.0,
              color: Colors.transparent,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(icon!),
              Expanded(
                child: (loading == true)
                    ? SpinKitRipple(
                        color: context.colorScheme.background,
                        size: AppDimens.loaderSize,
                      )
                    : Text(
                        title,
                        textAlign: TextAlign.center,
                        style: context.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w800,
                          color: AppColorsScheme.lightColorScheme.background,
                        ),
                      ),
              ),
            ] else
              (loading == true)
                  ? SpinKitRipple(
                      color: context.colorScheme.primary,
                      size: AppDimens.loaderSize,
                    )
                  : Text(
                      title,
                      textAlign: TextAlign.center,
                      style: context.textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                        color: AppColorsScheme.lightColorScheme.background,
                      ),
                    ),
          ],
        ),
      ),
    )
        .paddingSymmetric(horizontal: AppDimens.padding)
        .animate()
        .fadeIn(duration: 500.ms)
        .slide();
  }
}
