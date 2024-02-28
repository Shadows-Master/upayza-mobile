import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:upayza/generated/assets.gen.dart';
import 'package:upayza/src/core/routing/app_router.dart';
import 'package:upayza/src/shared/components/app_container.dart';
import 'package:upayza/src/shared/components/app_more_tile.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';

class AccountManagerComponent extends StatelessWidget {
  const AccountManagerComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      child: Column(
        children: [
          AppMoreTile(
            title: 'Account Manager',
            leftIcon: Assets.icons.userSquare.svg(
              // ignore: deprecated_member_use_from_same_package
              color: context.colorScheme.secondary,
            ),
            onPressed: () {
              context.pushRoute(const UserProfileViewRoute());
            },
            widget: Icon(
              IconlyLight.arrow_right_2,
              color: context.colorScheme.onTertiary.withOpacity(.5),
            ),
          ),
          AppMoreTile(
            title: 'Security',
            leftIcon: Assets.icons.iconlyLightShieldDone.svg(
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
            title: 'QR code',
            leftIcon: Assets.icons.qrScan.svg(
              // ignore: deprecated_member_use_from_same_package
              color: context.colorScheme.secondary,
            ),
            onPressed: () {},
            widget: Icon(
              IconlyLight.arrow_right_2,
              color: context.colorScheme.onTertiary.withOpacity(.5),
            ),
            hasLine: false,
          ),
        ],
      ),
    );
  }
}
