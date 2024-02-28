import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';

class TransactionActionButton extends StatelessWidget {
  const TransactionActionButton({
    super.key,
    required this.icon,
    required this.actionTitle,
    required this.onPressed,
    required this.color,
  });

  final Widget icon;
  final String actionTitle;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    const widthSize = AppDimens.containerSize * 1.5;
    return Container(
      width: widthSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimens.borderRadius),
        color: color,
        boxShadow: context.boxShadow,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          icon,
          AppTitle(title: actionTitle),
        ],
      ),
    )
        .onTap(onPressed)
        .paddingSymmetric(
          horizontal: AppDimens.halfSpacing,
          vertical: AppDimens.halfSpacing,
        )
        .withTooltip(actionTitle)
        .animate()
        .shimmer(delay: const Duration(microseconds: 500))
        .scale();
  }
}
