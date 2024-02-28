import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';
import 'package:upayza/src/shared/utils/app_constants.dart';
import 'package:upayza/src/shared/utils/app_helpers.dart';

class TransferBox extends ConsumerWidget {
  const TransferBox({
    super.key,
    required this.color,
  });

  final ColorScheme color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: AppDimens.containerSize * 1.3,
      decoration: BoxDecoration(
        boxShadow: context.boxShadow,
        borderRadius: BorderRadius.circular(
          AppDimens.borderRadius,
        ),
        color: AppConstants.appColors.background,
      ),
      child: Column(
        children: [
          Container(
            height: AppDimens.xsContainerSize * 1.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppDimens.borderRadius,
              ),
              boxShadow: context.boxShadow,
              color: color.surfaceTint.withOpacity(.2),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppTitle.h4(
                  title: "Provenance:",
                  fontWeight: FontWeight.w700,
                ),
                AppTitle.h4(title: "Canada"),
              ],
            ),
          ).paddingSymmetric(
            horizontal: AppDimens.padding,
            vertical: AppDimens.padding,
          ),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppTitle.h6(title: "Amount Send"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppTitle.h2(
                      title: AppHelpers.formatNumber(30565),
                      fontWeight: FontWeight.w800,
                    ),
                    const AppTitle.h5(
                      title: "XAF",
                      fontWeight: FontWeight.w800,
                    ),
                  ],
                ),
              ],
            ),
          ).paddingSymmetric(horizontal: AppDimens.padding)
        ],
      ),
    ).paddingSymmetric(
      horizontal: AppDimens.padding,
      vertical: AppDimens.padding,
    );
  }
}
