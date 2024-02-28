import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:upayza/generated/assets.gen.dart';
import 'package:upayza/src/features/Settings_views/ui/components/app_theme_mode_switcher.dart';
import 'package:upayza/src/shared/components/app_container.dart';
import 'package:upayza/src/shared/components/app_more_tile.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';

class PreferencesComponent extends StatelessWidget {
  const PreferencesComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      child: Column(
        children: [
          AppMoreTile(
            title: 'Notifications',
            leftIcon: Assets.icons.notification.svg(
              // ignore: deprecated_member_use_from_same_package
              color: context.colorScheme.secondary,
            ),
            onPressed: () {},
            widget: Icon(
              IconlyLight.arrow_right_2,
              color: context.colorScheme.onTertiary.withOpacity(.5),
            ),
          ),
          AppMoreTile(
            title: 'Language',
            leftIcon: Assets.icons.translateLanguage.svg(
              // ignore: deprecated_member_use_from_same_package
              color: context.colorScheme.secondary,
            ),
            onPressed: () {},
            widget: Icon(
              IconlyLight.arrow_right_2,
              color: context.colorScheme.onTertiary.withOpacity(.5),
            ),
          ),
          AppMoreTile(
            title: 'Dark Mode',
            leftIcon: Assets.icons.starsSquare.svg(
              // ignore: deprecated_member_use_from_same_package
              color: context.colorScheme.secondary,
            ),
            onPressed: () {},
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppThemeModeSwitcher(),
                AppDimens.doubleSpacing.widthBox,
                Icon(
                  IconlyLight.arrow_right_2,
                  color: context.colorScheme.onTertiary.withOpacity(
                    .5,
                  ),
                ),
              ],
            ),
          ),
          AppMoreTile(
            title: 'Copyright',
            leftIcon: Assets.icons.copyright.svg(
              // ignore: deprecated_member_use_from_same_package
              color: context.colorScheme.secondary,
            ),
            onPressed: () {},
            widget: Icon(
              IconlyLight.arrow_right_2,
              color: context.colorScheme.onTertiary.withOpacity(.5),
            ),
          ),
          AppMoreTile(
            title: 'Privacy Policy',
            hasLine: false,
            leftIcon: Assets.icons.folderShield.svg(
              // ignore: deprecated_member_use_from_same_package
              color: context.colorScheme.secondary,
            ),
            onPressed: () {},
            widget: Icon(
              IconlyLight.arrow_right_2,
              color: context.colorScheme.onTertiary.withOpacity(.5),
            ),
          ),
        ],
      ),
    );
  }
}
