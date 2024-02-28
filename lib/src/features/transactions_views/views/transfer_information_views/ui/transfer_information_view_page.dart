import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/constants/app_string.dart';

@RoutePage()
class TransferInformationViewPage extends ConsumerWidget {
  const TransferInformationViewPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: Column(
          children: [
            AppDimens.tripleSpacing.heightBox,
            const Row(
              children: [
                AutoLeadingButton(),
                AppTitle(
                  title: AppString.transfer,
                  fontWeight: FontWeight.bold,
                ),
                AppTitle.h5(title: AppString.transferDescription)
              ],
            ),
            AppDimens.tripleSpacing.heightBox,
          ],
        ),
      ),
    );
  }
}
