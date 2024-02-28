import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:upayza/generated/assets.gen.dart';
import 'package:upayza/src/features/Dashboard_views/ui/components/transaction_action_button.dart';
import 'package:upayza/src/shared/components/app_alert_dialog.dart';
import 'package:upayza/src/shared/constants/app_colors_scheme.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/utils/app_helpers.dart';

class TransactionActionTile extends StatelessWidget {
  const TransactionActionTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimens.smContainerSize * 1.08,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          TransactionActionButton(
            icon: Assets.icons.sendMessage.svg(),
            color: AppColorsScheme.lightColorScheme.onBackground,
            actionTitle: "Send",
            onPressed: () {
              AppHelpers.showAlert(
                context: context,
                child: const AppAlertDialog(
                  message: "Just to Test action",
                ),
              );
            },
          ),
          TransactionActionButton(
            icon: Assets.icons.downArrow.svg(),
            color: AppColorsScheme.lightColorScheme.onBackground,
            actionTitle: "Reception",
            onPressed: () {
              AppHelpers.showAlert(
                context: context,
                child: const AppAlertDialog(
                  message: "Just to Test action",
                ),
              );
            },
          ),
          TransactionActionButton(
            icon: Assets.icons.preferences.svg(),
            color: AppColorsScheme.lightColorScheme.onBackground,
            actionTitle: "Exchange Rate",
            onPressed: () {
              AppHelpers.showAlert(
                context: context,
                child: const AppAlertDialog(
                  message: "Just to Test action",
                ),
              );
            },
          ),
          TransactionActionButton(
            icon: Assets.icons.preferences.svg(),
            color: AppColorsScheme.lightColorScheme.onBackground,
            actionTitle: "Gérer",
            onPressed: () {
              AppHelpers.showAlert(
                context: context,
                child: const AppAlertDialog.success(
                  message: "Just to Test action",
                ),
              );
            },
          ),
        ],
      ),
    ).paddingSymmetric(vertical: AppDimens.padding).animate().slide().shake();
  }
}