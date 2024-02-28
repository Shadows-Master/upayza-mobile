import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/constants/app_colors_scheme.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';

class TransferMethodButton extends StatelessWidget {
  const TransferMethodButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final Widget icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimens.smContainerSize/1.4,
      width: AppDimens.containerSize / 1.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimens.borderRadius),
        color: AppColorsScheme.lightColorScheme.secondary,
        boxShadow: context.boxShadow,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          icon,
          AppTitle.h4(
            title: title,
            color: AppColorsScheme.lightColorScheme.background,
          )
        ],
      ),
    ).paddingSymmetric(horizontal: AppDimens.halfPadding).animate().slideY(
          delay: const Duration(microseconds: 500),
          curve: Curves.bounceIn,
        );
  }
}
