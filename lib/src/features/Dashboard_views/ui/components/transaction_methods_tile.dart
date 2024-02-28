import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:upayza/generated/assets.gen.dart';
import 'package:upayza/src/features/Dashboard_views/ui/components/transfer_method_button.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/constants/app_colors_scheme.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/constants/app_string.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';

class TransactionMethodsTitle extends ConsumerWidget {
  const TransactionMethodsTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: AppDimens.containerSize / 1.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimens.borderRadius),
        color: CupertinoColors.white,
        boxShadow: context.boxShadow,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const AppTitle(
            title: AppString.methodTransfer,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TransferMethodButton(
                  title: "Bank",
                  icon: Assets.icons.phone.svg(
                    color: AppColorsScheme.lightColorScheme.onBackground,
                  ),
                  onTap: () {},
                ),
                TransferMethodButton(
                  title: "Mobile",
                  icon: Assets.icons.bankCard.svg(
                    color: AppColorsScheme.lightColorScheme.onBackground,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ).paddingSymmetric(
        horizontal: AppDimens.halfPadding,
        vertical: AppDimens.padding,
      ),
    ).animate().slide(delay: 500.ms, curve: Curves.slowMiddle);
  }
}
