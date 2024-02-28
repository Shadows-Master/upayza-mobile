import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:upayza/src/features/Settings_views/ui/components/account_manager_component.dart';
import 'package:upayza/src/features/Settings_views/ui/components/log_out_component.dart';
import 'package:upayza/src/features/Settings_views/ui/components/preferences_component.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';
import 'package:upayza/src/shared/utils/app_translate.dart';

@RoutePage()
class SettingViewPage extends StatelessWidget {
  const SettingViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppDimens.tripleSpacing.heightBox,
              AppTitle.h2(title: T(context).more),
              const AppTitle.h4(title: "Applications Settings"),
              AppDimens.tripleSpacing.heightBox,
              AppTitle(
                title: "Account",
                color: context.colorScheme.onTertiary.withOpacity(.5),
                fontWeight: FontWeight.bold,
              ),
              AppDimens.doubleSpacing.heightBox,
              const AccountManagerComponent(),
              AppDimens.tripleSpacing.heightBox,
              AppTitle(
                title: "Preferences",
                color: context.colorScheme.onTertiary.withOpacity(.5),
                fontWeight: FontWeight.bold,
              ),
              AppDimens.doubleSpacing.heightBox,
              const PreferencesComponent(),
              AppDimens.tripleSpacing.heightBox,
              AppDimens.spacing.heightBox,
              const LogOutComponent(),
              AppDimens.tripleSpacing.heightBox,
            ],
          ),
        ).paddingAll(AppDimens.padding),
      ),
    );
  }
}
