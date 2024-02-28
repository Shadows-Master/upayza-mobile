import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:upayza/generated/assets.gen.dart';
import 'package:upayza/src/features/Dashboard_views/datasources/data/model.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/constants/app_string.dart';
import 'package:upayza/src/shared/utils/app_constants.dart';
import 'package:upayza/src/shared/utils/app_helpers.dart';

import 'components/transaction_recap_tile.dart';

@RoutePage()
class HistoryTransactionsViewPage extends StatelessWidget {
  const HistoryTransactionsViewPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDimens.tripleSpacing.heightBox,
            AppDimens.doubleSpacing.heightBox,
            const AppTitle(
              title: AppString.history,
              fontWeight: FontWeight.w800,
            ),
            const AppTitle.h5(title: AppString.historyDescription),
            AppDimens.tripleSpacing.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const AppTitle(
                  title: "Filter",
                  fontWeight: FontWeight.w800,
                ),
                AppDimens.halfSpacing.widthBox,
                Assets.icons.preferences.svg(),
              ],
            ),
            AppDimens.tripleSpacing.heightBox,
            ListView.builder(
              itemBuilder: (context, index) {
                final m = data.elementAt(index);
                final valueName = AppHelpers.generateInitial(
                  name: m.surname,
                  surname: m.name,
                );

                return TransactionRecapTile(
                  m: m,
                  valueName: valueName,
                  appColors: AppConstants.appColors,
                  successTitle: AppConstants.successTitle,
                  failedTitle: AppConstants.failedTitle,
                  amount: AppConstants.amount,
                  dateAgo: AppConstants.dateAgo,
                  index: index,
                );
              },
              itemCount: data.length,
              shrinkWrap: true,
            ).expanded()
          ],
        ),
      ).paddingSymmetric(horizontal: AppDimens.padding).animate().slide(
            duration: 700.ms,
            curve: Curves.easeIn,
          ),
    );
  }
}
