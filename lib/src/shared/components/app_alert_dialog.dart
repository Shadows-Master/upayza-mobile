import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:upayza/generated/assets.gen.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';

enum _AppAlertType { success, error, info }

class AppAlertDialog extends StatelessWidget {
  final String message;
  final _AppAlertType _appAlertType;

  const AppAlertDialog({
    super.key,
    required this.message,
  }) : _appAlertType = _AppAlertType.info;

  const AppAlertDialog.error({
    super.key,
    required this.message,
  }) : _appAlertType = _AppAlertType.error;

  const AppAlertDialog.success({
    super.key,
    required this.message,
  }) : _appAlertType = _AppAlertType.success;

  @override
  Widget build(BuildContext context) {
    late Widget alertIcon;
    late String title;
    switch (_appAlertType) {
      case _AppAlertType.success:
        alertIcon = Assets.images.iconSuccess.image();
        title = "Success";
        break;
      case _AppAlertType.error:
        alertIcon = Assets.images.iconError.image();
        title = "Error";
        break;
      case _AppAlertType.info:
        alertIcon = Assets.images.iconInfo.image();
        title = "Information";
        break;
    }
    return AlertDialog.adaptive(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimens.borderRadius),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          alertIcon,
          AppDimens.spacing.heightBox,
          AppTitle(
            title: title,
            fontWeight: FontWeight.w700,
          ),
          AppTitle.h4(title: message),
        ],
      ),
    );
  }
}
