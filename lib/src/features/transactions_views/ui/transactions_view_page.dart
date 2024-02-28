import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:upayza/src/features/transactions_views/datasources/models/methodType.dart';
import 'package:upayza/src/features/transactions_views/states/choose_method_state.dart';
import 'package:upayza/src/features/transactions_views/ui/components/transfer_method_widget.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/components/buttons/app_button.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/constants/app_string.dart';
import 'package:upayza/src/shared/utils/app_constants.dart';
import 'components/transfer_panel.dart';

@RoutePage()
class TransactionsViewPage extends ConsumerWidget {
  const TransactionsViewPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = AppConstants.appColors;
    final indexValue = ref.watch(chooseMethodStateProvider);
    final indexValueNotifier = ref.read(chooseMethodStateProvider.notifier);
    final typeSelected = ref.watch(selectedListStateProvider);
    final typeSelectedValueNotifier = ref.read(
      selectedListStateProvider.notifier,
    );
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDimens.tripleSpacing.heightBox,
            AppDimens.doubleSpacing.heightBox,
            const AppTitle.h2(
              title: AppString.transfer,
              fontWeight: FontWeight.bold,
            ),
            const AppTitle.h4(title: AppString.transferDescription),
            TransferPanel(color: color),
            const Divider(),
            AppDimens.tripleSpacing.heightBox,
            const AppTitle.h2(
              title: AppString.methods,
              fontWeight: FontWeight.bold,
            ),
            const AppTitle.h4(title: AppString.methodDescription),
            SizedBox(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: AppDimens.tripleSpacing / 9.2,
                  crossAxisSpacing: AppDimens.doubleSpacing,
                  mainAxisSpacing: AppDimens.doubleSpacing,
                ),
                shrinkWrap: true,
                itemCount: methodTypesList.length,
                itemBuilder: (context, index) {
                  final type = methodTypesList.elementAt(index);
                  final isEmpty = typeSelected.isEmpty;
                  return TransferMethodWidget(
                    methodTitle: type.label,
                    icon: type.iconType,
                    index: index,
                    selectedType: isEmpty ? 0 : typeSelected.first,
                  ).onTap(
                    () {
                      typeSelectedValueNotifier.delete();
                      typeSelectedValueNotifier.update(index);
                    },
                  );
                },
              ),
            ).expanded(),
            AppButton(
              title: "Continue",
              onPressed: () {},
            ),
            AppDimens.doubleSpacing.heightBox,
          ],
        ).paddingSymmetric(horizontal: AppDimens.padding).animate().slide(
              duration: 500.ms,
              curve: Curves.easeIn,
            ),
      ).animate().slide(
            duration: 500.ms,
            curve: Curves.easeIn,
          ),
    );
  }
}
