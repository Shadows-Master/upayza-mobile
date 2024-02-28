import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/constants/app_string.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';
import 'package:upayza/src/shared/utils/app_helpers.dart';

import 'card_transaction_stats_tile.dart';

class TransactionStatsTile extends StatelessWidget {
  const TransactionStatsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimens.mdContainerSize,
      width: AppDimens.lgContainerSize * 1.44,
      decoration: BoxDecoration(
        color: context.colorScheme.onBackground,
        borderRadius: BorderRadius.circular(AppDimens.borderRadius),
        boxShadow: context.boxShadow,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Column(
              children: [
                AppTitle.h5(
                  title: AppString.totalTransactions.toUpperCase(),
                ),
                AppTitle.h1(
                  title: "${AppHelpers.formatNumber(21879)} CAD",
                  fontWeight: FontWeight.w800,
                )
              ],
            ),
          ),
          const CardTransactionStatsTile()
        ],
      ),
    ).paddingSymmetric(
      vertical: AppDimens.padding,
      horizontal: AppDimens.halfPadding,
    );
  }
}
