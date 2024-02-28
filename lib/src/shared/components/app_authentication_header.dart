import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:upayza/generated/assets.gen.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';

class AppAuthenticationHeader extends StatelessWidget {
  const AppAuthenticationHeader({
    Key? key,
    this.title,
    this.description,
  }) : super(key: key);

  final String? title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppDimens.tripleSpacing.heightBox,
        Assets.images.upayza.image(scale: AppDimens.iconSize / 4),
        AppTitle.h1(
          title: title ?? "Welcome back!",
          fontWeight: FontWeight.w700,
        ).paddingOnly(left: AppDimens.halfPadding),
        AppTitle.h4(
          title: description ?? "Please enter your credentials",
        ).paddingOnly(left: AppDimens.halfPadding),
        AppDimens.tripleSpacing.heightBox,
      ],
    ).animate().flipH(duration: 500.ms).slide();
  }
}
