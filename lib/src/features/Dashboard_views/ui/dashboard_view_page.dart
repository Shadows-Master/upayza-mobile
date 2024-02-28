import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:upayza/src/features/Dashboard_views/ui/components/fast_transaction_tile.dart';
import 'package:upayza/src/features/Dashboard_views/ui/components/transaction_methods_tile.dart';
import 'package:upayza/src/features/History_transactions_views/ui/components/transaction_tile.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';

import 'components/greeting_notification_tile.dart';
import 'components/transaction_action_tile.dart';
import 'components/transaction_stats_tile.dart';

@RoutePage()
class DashboardViewPage extends StatefulWidget {
  const DashboardViewPage({super.key});

  @override
  State<DashboardViewPage> createState() => _DashboardViewPageState();
}

class _DashboardViewPageState extends State<DashboardViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppDimens.tripleSpacing.heightBox,
              AppDimens.tripleSpacing.heightBox,
              const GreetingNotificationTile(),
              const TransactionStatsTile(),
              const TransactionActionTile(),
              const TransactionMethodsTitle(),
              const FastTransactionTile(),
              AppDimens.spacing.heightBox,
              const TransactionTile(),
            ],
          )
              .paddingSymmetric(horizontal: AppDimens.padding)
              .animate()
              .slideY(
                delay: const Duration(microseconds: 500),
                curve: Curves.bounceIn,
              )
              .shimmer(delay: const Duration(microseconds: 700)),
        ),
      ),
    );
  }
}
