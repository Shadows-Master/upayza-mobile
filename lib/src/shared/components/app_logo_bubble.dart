import 'package:flutter/material.dart';
import 'package:upayza/generated/assets.gen.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';

class AppLogoBubble extends StatelessWidget {
  const AppLogoBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimens.mdContainerSize * 2,
      width: double.maxFinite,
      child: Stack(
        children: [
          Positioned(
            left: -AppDimens.tripleSpacing,
            top: -AppDimens.tripleSpacing * 1.5,
            child: Assets.images.bubble.svg(
              height: AppDimens.mdContainerSize * 1.5,
              width: AppDimens.mdContainerSize * 1.5,
              // ignore: deprecated_member_use_from_same_package
              color: context.colorScheme.primary,
            ),
          ),
          Positioned(
            left: AppDimens.spacing,
            top: AppDimens.xsContainerSize * 2,
            child: Assets.images.logo.svg(
              // ignore: deprecated_member_use_from_same_package
              color: context.colorScheme.onPrimary,
              height: AppDimens.logoSize*1.2,
              width: AppDimens.logoSize*1.2,
            ),
          ),
        ],
      ),
    );
  }
}
