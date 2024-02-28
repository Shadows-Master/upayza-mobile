import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';
import 'package:upayza/generated/assets.gen.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/utils/app_helpers.dart';

class TransactionAmountWidget extends StatelessWidget {
  const TransactionAmountWidget({
    super.key,
    required this.amount,
    required this.dateAgo,
  });

  final double amount;
  final String dateAgo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        AppTitle.h2(
          title: "${AppHelpers.formatNumber(amount)} CAD",
          fontWeight: FontWeight.w800,
        ),
        AppTitle.h5(title: dateAgo),
        AppDimens.spacing.heightBox,
        Row(
          children: [
            Assets.icons.receiptBill.svg().onTap(() => null),
            AppDimens.halfSpacing.widthBox,
            const Icon(Iconsax.more5).onTap(() => null)
          ],
        )
      ],
    );
  }
}