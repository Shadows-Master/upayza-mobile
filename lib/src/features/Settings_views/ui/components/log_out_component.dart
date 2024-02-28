import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:upayza/generated/assets.gen.dart';
import 'package:upayza/src/shared/components/app_container.dart';
import 'package:upayza/src/shared/components/app_more_tile.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';

class LogOutComponent extends StatelessWidget {
  const LogOutComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      child: AppMoreTile(
        title: 'Log Out',
        hasLine: false,
        leftIcon: Assets.icons.logout.svg(
          // ignore: deprecated_member_use_from_same_package
          color: context.colorScheme.error,
        ),
        onPressed: () {},
        widget: Icon(
          IconlyLight.arrow_right_2,
          color: context.colorScheme.onTertiary.withOpacity(.5),
        ),
      ),
    );
  }
}
