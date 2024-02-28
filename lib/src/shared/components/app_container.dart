import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';

class AppContainer extends StatelessWidget {
  const AppContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimens.borderRadius),
        color: context.colorScheme.onSecondaryContainer,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0.0, 2.0),
            blurRadius: AppDimens.borderRadius / 6.5,
            spreadRadius: AppDimens.halfSpacing / 8,
            color: context.colorScheme.shadow.withOpacity(.1),
          )
        ],
      ),
      child: child,
    );
  }
}
