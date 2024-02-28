import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:upayza/src/core/routing/app_router.dart';
import 'package:upayza/src/features/Countries_views/ui/components/app_country_dropdown.dart';
import 'package:upayza/src/shared/components/app_logo_bubble.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/components/buttons/app_button.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';

@RoutePage()
class CountryViewPage extends StatelessWidget {
  const CountryViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppLogoBubble(),
            const AppTitle.h2(
              title: "Countries",
              fontWeight: FontWeight.w700,
            ).paddingSymmetric(
              horizontal: AppDimens.doublePadding,
            ),
            const AppTitle(title: "Choose your country").paddingSymmetric(
              horizontal: AppDimens.doublePadding,
            ),
            AppDimens.tripleSpacing.heightBox,
            AppCountryDropdown(),
            const Spacer(),
            AppButton(
              title: "Continue",
              onPressed: () {
                context.router.replace(const AuthenticationViewRoute());
              },
            ),
            AppDimens.doubleSpacing.heightBox,
          ],
        ),
      ),
    );
  }
}
