import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';

class AppAuthenticationOptionButton extends StatelessWidget {
  const AppAuthenticationOptionButton({
    super.key,
    required this.icon,
    required this.title,
  });

  final Widget icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimens.btnSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppDimens.borderRadius,
        ),
        border: Border.all(width: .5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [icon, AppTitle(title: title)],
      ),
    ).paddingSymmetric(vertical: AppDimens.halfPadding).animate().flipV(
          duration: 500.ms,
          curve: Curves.bounceIn,
        );
  }
}
