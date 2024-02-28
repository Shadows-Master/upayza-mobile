import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/constants/app_colors_scheme.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/constants/app_string.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';
import 'package:upayza/src/shared/utils/app_helpers.dart';

class CardTransactionStatsTile extends StatelessWidget {
  const CardTransactionStatsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cardColor = AppColorsScheme.lightColorScheme.surface;
    return Container(
      height: AppDimens.smContainerSize * 1.46,
      width: AppDimens.xlContainerSize,
      margin: const EdgeInsets.symmetric(
        horizontal: AppDimens.padding,
      ),
      decoration: BoxDecoration(
        color: context.colorScheme.secondary,
        borderRadius: BorderRadius.circular(
          AppDimens.borderRadius,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppTitle.h5(
                  title: AppString.totalTransactions,
                  color: cardColor.withOpacity(.5),
                ),
                AppTitle(
                  title: "${AppHelpers.formatNumber(9129)} CAD",
                  fontWeight: FontWeight.w700,
                  color: context.colorScheme.onBackground,
                )
              ],
            ),
          ),
          const Icon(Iconsax.mask)
        ],
      ).paddingSymmetric(horizontal: AppDimens.doublePadding),
    );
  }
}
