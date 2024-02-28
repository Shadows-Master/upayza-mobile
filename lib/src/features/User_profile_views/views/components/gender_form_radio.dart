import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:upayza/src/features/User_profile_views/views/components/gender_radio_button.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';

class GenderFormRadio extends StatelessWidget {
  const GenderFormRadio({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const GenderRadioButton(
          isMen: true,
          title: 'Men',
        ),
        AppDimens.spacing.widthBox,
        const GenderRadioButton(
          isMen: false,
          title: "Female",
        )
      ],
    )
        .paddingSymmetric(
          horizontal: AppDimens.halfPadding,
          vertical: AppDimens.halfPadding,
        )
        .animate()
        .fadeIn(duration: 500.ms)
        .slide();
  }
}
