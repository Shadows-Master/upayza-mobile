import 'package:flutter/material.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';

class VDivider extends StatelessWidget {
  const VDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colorScheme.secondary.withOpacity(
        .4,
      ),
      width: AppDimens.smContainerSize / 14.5,
      height: AppDimens.smContainerSize,
    );
  }
}
