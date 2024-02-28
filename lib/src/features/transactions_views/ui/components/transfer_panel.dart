import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:upayza/src/features/transactions_views/ui/components/transfer_box.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';
import 'package:upayza/src/shared/utils/app_constants.dart';

class TransferPanel extends ConsumerWidget {
  const TransferPanel({
    super.key,
    required this.color,
  });

  final ColorScheme color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      child: Stack(
        children: [
          Column(
            children: [
              TransferBox(color: color),
              TransferBox(color: color),
            ],
          ),
          Positioned(
            top: AppDimens.tripleSpacing * 5.7,
            left: AppDimens.tripleSpacing,
            right: AppDimens.tripleSpacing,
            child: CircleAvatar(
              backgroundColor: context.colorScheme.primary,
              radius: AppDimens.xsContainerSize,
              child: Icon(
                Iconsax.arrow_swap,
                color: AppConstants.appColors.background,
              ),
            ),
          ),
        ],
      ),
    ).animate().slide(
      duration: 500.ms,
      curve: Curves.easeIn,
    );
  }
}