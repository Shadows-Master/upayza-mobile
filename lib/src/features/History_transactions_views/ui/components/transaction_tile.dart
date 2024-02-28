import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:upayza/src/core/routing/app_router.dart';
import 'package:upayza/src/features/Dashboard_views/datasources/data/model.dart';
import 'package:upayza/src/features/History_transactions_views/ui/components/transaction_recap_tile.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/utils/app_constants.dart';
import 'package:upayza/src/shared/utils/app_helpers.dart';

class TransactionTile extends ConsumerWidget {
  const TransactionTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: AppDimens.mdContainerSize * 1.2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const AppTitle(
                title: "Last Transactions",
                fontWeight: FontWeight.w800,
              ),
              const AppTitle(title: "More", fontWeight: FontWeight.w800,).onTap(
                () => {
                  context.navigateTo(const HistoryTransactionsViewRoute()),
                },
              )
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: data.take(3).length,
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
          ).expanded()
        ],
      ),
    );
  }
}
