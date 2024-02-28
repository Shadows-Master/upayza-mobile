import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:upayza/src/features/Dashboard_views/datasources/data/model.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/constants/app_string.dart';

class TransactionUserWidget extends StatelessWidget {
  const TransactionUserWidget({
    super.key,
    required this.m,
    required this.successTitle,
    required this.failedTitle,
    required this.index,
  });

  final Model m;
  final AppTitle successTitle;
  final AppTitle failedTitle;
  final num index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppTitle.h2(
          title: '${m.surname} ${m.name}',
          fontWeight: FontWeight.w800,
        ),
        const AppTitle.h5(title: AppString.transactionType),
        AppDimens.spacing.heightBox,
        (index % 2 == 0) ? successTitle : failedTitle
      ],
    );
  }
}
