import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';

class AppFormPrefixIcon extends StatelessWidget {
  const AppFormPrefixIcon({
    super.key,
    required this.icon,
  });

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            width: .6,
            color: context.colorScheme.secondary,
          ),
        ),
      ),
      child: icon.paddingOnly(
        right: AppDimens.spacing,
      ),
    ).paddingSymmetric(
      horizontal: AppDimens.padding,
      vertical: AppDimens.padding, 
    );
  }
}
