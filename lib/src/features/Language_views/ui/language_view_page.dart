import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:upayza/generated/assets.gen.dart';
import 'package:upayza/src/core/routing/app_router.dart';
import 'package:upayza/src/features/Entrances_views/startup_views/ui/components/language_dropdown_component.dart';
import 'package:upayza/src/shared/components/app_logo_bubble.dart';
import 'package:upayza/src/shared/components/buttons/app_button.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';

@RoutePage()
class LanguageViewPage extends StatelessWidget {
  const LanguageViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: Column(
          children: [
            const AppLogoBubble(),
            AppDimens.tripleSpacing.heightBox,
            Assets.images.language
                .svg(
                  height: AppDimens.doubleIconSize * 1.7,
                  width: AppDimens.doubleIconSize * 1.7,
                  // ignore: deprecated_member_use_from_same_package
                  color: context.colorScheme.primary,
                )
                .alignAtCenter()
                .animate()
                .flipH(duration: 500.ms, curve: Curves.easeInBack)
                .scale(),
            AppDimens.doubleSpacing.heightBox,
            Expanded(
              child: ListView(
                children: [
                  const LanguageDropdown()
                      .alignAtBottomCenter()
                      .animate()
                      .flipH(duration: 500.ms, curve: Curves.easeInBack)
                      .scale(),
                ],
              ),
            ),
            const Spacer(),
            AppButton(
              title: "Continue",
              onPressed: () {
                context.router.replace(OrientationsViewRoute());
              },
            ),
            AppDimens.doubleSpacing.heightBox,
          ],
        ),
      ),
    );
  }
}
