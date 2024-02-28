import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:upayza/src/features/Dashboard_views/datasources/data/model.dart';
import 'package:upayza/src/features/History_transactions_views/ui/components/transaction_amount_widget.dart';
import 'package:upayza/src/features/History_transactions_views/ui/components/transaction_user_widget.dart';
import 'package:upayza/src/shared/components/app_image_container.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';

class TransactionRecapTile extends StatelessWidget {
  const TransactionRecapTile({
    super.key,
    required this.m,
    required this.valueName,
    required this.appColors,
    required this.successTitle,
    required this.failedTitle,
    required this.amount,
    required this.dateAgo,
    required this.index,
  });

  final Model m;
  final String valueName;
  final ColorScheme appColors;
  final AppTitle successTitle;
  final AppTitle failedTitle;
  final double amount;
  final String dateAgo;
  final num index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimens.containerSize,
      margin: const EdgeInsets.only(bottom: AppDimens.padding),
      decoration: BoxDecoration(
        boxShadow: context.boxShadow,
        borderRadius: BorderRadius.circular(AppDimens.borderRadius),
        color: context.colorScheme.background,
      ),
      child: Column(
        children: [
          AppDimens.spacing.heightBox,
          AppDimens.halfSpacing.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Badge(
                backgroundColor: Colors.transparent,
                alignment: Alignment.bottomRight,
                smallSize: AppDimens.spacing,
                label: AppImageContainer(
                  imageUrl: m.countryFlag,
                  size: AppDimens.spacing,
                ),
                child: CircleAvatar(
                  radius: AppDimens.doubleBorderRadius * 1.4,
                  child: AppTitle(
                    title: valueName,
                    fontWeight: FontWeight.w800,
                    color: appColors.background,
                  ).toCenter(),
                ),
              ),
              TransactionUserWidget(
                m: m,
                successTitle: successTitle,
                failedTitle: failedTitle,
                index: index,
              ),
              TransactionAmountWidget(
                amount: amount,
                dateAgo: dateAgo,
              )
            ],
          )
        ],
      ),
    ).animate()
        .slideY(duration: 700.ms, curve: Curves.bounceIn)
        .paddingSymmetric(horizontal: AppDimens.padding)
        .onTap(() => null);
  }
}