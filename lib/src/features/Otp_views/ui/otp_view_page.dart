import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:upayza/src/core/routing/app_router.dart';
import 'package:upayza/src/shared/components/app_authentication_header.dart';
import 'package:upayza/src/features/Otp_views/ui/components/otp_input_form.dart';
import 'package:upayza/src/shared/components/buttons/app_button.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/constants/app_string.dart';

@RoutePage()
class OtpViewPage extends StatelessWidget {
  const OtpViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDimens.tripleSpacing.heightBox,
            const AppAuthenticationHeader(
              title: "Verification",
              description: AppString.otpDescription,
            ),
            AppDimens.tripleSpacing.heightBox,
            OtpInputForm(),
            AppDimens.tripleSpacing.heightBox,
            AppButton(
              title: "Vérifier",
              onPressed: () {
                context.router.navigate(const HomeNavbarViewRoute());
              },
            )
          ],
        ),
      ).paddingSymmetric(horizontal: AppDimens.padding),
    );
  }
}
