import 'package:flutter/material.dart';
import 'package:upayza/generated/assets.gen.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';

class TransferMethodWidget extends StatelessWidget {
  const TransferMethodWidget({
    super.key,
    required this.methodTitle,
    required this.icon,
    this.isChecked = false,
    required this.index,
    required this.selectedType,
  });

  final String methodTitle;
  final Widget icon;
  final bool isChecked;
  final int index;
  final int selectedType;

  @override
  Widget build(BuildContext context) {
    final containerColor = context.colorScheme.primary;
    return Container(
      height: AppDimens.xsContainerSize * 1.5,
      decoration: BoxDecoration(
        boxShadow: context.boxShadow,
        borderRadius: BorderRadius.circular(
          AppDimens.borderRadius,
        ),
        border: Border.all(
          width: selectedType == index ? 2 : 0,
          color: containerColor,
        ),
      ),
      foregroundDecoration: BoxDecoration(
        color: selectedType == index
            ? containerColor.withOpacity(.5)
            : Colors.grey.shade50,
        backgroundBlendMode: BlendMode.saturation,
        borderRadius: BorderRadius.circular(
          AppDimens.borderRadius,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AppTitle.h6(
                title: "Transfer",
                fontWeight: FontWeight.bold,
              ),
              AppTitle.h4(
                title: methodTitle,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          selectedType == index
              ? Assets.icons.checkCircleSuccess.svg()
              : Assets.icons.checkCircle.svg(),
        ],
      ),
    );
  }
}
