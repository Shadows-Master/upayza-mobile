import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:upayza/generated/assets.gen.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/constants/app_string.dart';

class UserAvatarName extends ConsumerWidget {
  const UserAvatarName({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      child: Row(
        children: [
          Assets.icons.userCircle.svg(
            height: AppDimens.mdImageSize,
            width: AppDimens.mdLoaderSize,
          ),
          AppDimens.spacing.widthBox,
          const AppTitle(title: AppString.greetingsHome),
        ],
      ),
    );
  }
}
