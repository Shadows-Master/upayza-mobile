// ignore_for_file: deprecated_member_use_from_same_package

import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:upayza/generated/assets.gen.dart';
import 'package:upayza/src/core/routing/app_router.dart';
import 'package:upayza/src/shared/components/app_more_tile.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';
import 'package:upayza/src/shared/utils/app_translate.dart';

@RoutePage()
class UserProfileViewPage extends StatelessWidget {
  const UserProfileViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppDimens.spacing.heightBox,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                verticalDirection: VerticalDirection.up,
                children: [
                  const AutoLeadingButton(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppTitle(title: T(context).more),
                      const AppTitle.h4(title: "Account Manager")
                    ],
                  )
                ],
              ),
              AppDimens.tripleSpacing.heightBox,
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: context.colorScheme.secondary.withOpacity(.2),
                      width: .2,
                    ),
                    bottom: BorderSide(
                      color: context.colorScheme.secondary.withOpacity(.3),
                      width: .2,
                    ),
                  ),
                ),
                child: AppMoreTile(
                  title: "Welcome, Daryl Come",
                  hasLine: false,
                  hasSize: true,
                  color: context.colorScheme.secondary,
                  leftIcon: Assets.icons.userCircle.svg(
                    color: context.colorScheme.secondary,
                    height: AppDimens.iconSize * 2,
                    width: AppDimens.iconSize * 2,
                  ),
                  widget: Assets.icons.logout.svg(
                    color: context.colorScheme.secondary,
                  ),
                  onPressed: () {
                    context.pushRoute(const UserUpdateProfileViewRoute());
                  },
                ).paddingSymmetric(vertical: AppDimens.halfPadding),
              ),
              AppDimens.spacing.heightBox,
              AppMoreTile(
                title: "My Recipients",
                leftIcon: Assets.icons.iconlyLightUser.svg(
                  color: context.colorScheme.secondary,
                ),
                hasLine: false,
                widget: Icon(
                  IconlyLight.arrow_right_2,
                  color: context.colorScheme.onTertiary.withOpacity(.5),
                ),
                onPressed: () {},
              ).paddingSymmetric(vertical: AppDimens.halfPadding),
              AppMoreTile(
                title: "My ${T(context).transaction}",
                leftIcon: Assets.icons.swapHorizontal.svg(
                  color: context.colorScheme.secondary,
                ),
                hasLine: false,
                widget: Icon(
                  IconlyLight.arrow_right_2,
                  color: context.colorScheme.onTertiary.withOpacity(.5),
                ),
                onPressed: () {},
              ).paddingSymmetric(vertical: AppDimens.halfPadding),
              AppMoreTile(
                title: "My ${T(context).card}",
                leftIcon: Assets.icons.bankCarddoubleOutline.svg(
                  color: context.colorScheme.secondary,
                ),
                hasLine: false,
                widget: Icon(
                  IconlyLight.arrow_right_2,
                  color: context.colorScheme.onTertiary.withOpacity(.5),
                ),
                onPressed: () {},
              ).paddingSymmetric(vertical: AppDimens.halfPadding),
              AppMoreTile(
                title: "My Profil",
                leftIcon: Assets.icons.userSquare.svg(
                  color: context.colorScheme.secondary,
                ),
                hasLine: false,
                widget: Icon(
                  IconlyLight.arrow_right_2,
                  color: context.colorScheme.onTertiary.withOpacity(.5),
                ),
                onPressed: () {},
              ).paddingSymmetric(vertical: AppDimens.halfPadding),
              AppMoreTile(
                title: "My Settings",
                leftIcon: Assets.icons.setting.svg(
                  color: context.colorScheme.secondary,
                ),
                hasLine: false,
                widget: Icon(
                  IconlyLight.arrow_right_2,
                  color: context.colorScheme.onTertiary.withOpacity(.5),
                ),
                onPressed: () {},
              ).paddingSymmetric(vertical: AppDimens.halfPadding),
              AppDimens.doubleSpacing.heightBox,
              Container(
                decoration: BoxDecoration(
                  color: context.colorScheme.secondary.withOpacity(.3),
                  borderRadius: BorderRadius.circular(AppDimens.borderRadius),
                ),
                child: AppMoreTile(
                  title: "Contact Support",
                  leftIcon: Assets.icons.headphone.svg(
                    color: context.colorScheme.secondary,
                    height: AppDimens.iconSize * 2,
                    width: AppDimens.iconSize * 2,
                  ),
                  hasLine: false,
                  onPressed: () {},
                ).paddingSymmetric(vertical: AppDimens.halfPadding),
              ).paddingSymmetric(horizontal: AppDimens.padding),
              AppDimens.doubleSpacing.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppMoreTile(
                    title: "Privacy Policy",
                    leftIcon: const SizedBox.shrink(),
                    onPressed: () {},
                    widget: Icon(
                      IconlyLight.arrow_right_2,
                      color: context.colorScheme.onTertiary.withOpacity(.5),
                    ).paddingOnly(left: AppDimens.halfPadding),
                  ),
                  AppMoreTile(
                    title: "language",
                    leftIcon: const SizedBox.shrink(),
                    onPressed: () {},
                    widget: Icon(
                      IconlyLight.arrow_right_2,
                      color: context.colorScheme.onTertiary.withOpacity(.5),
                    ).paddingOnly(left: AppDimens.halfPadding),
                  ),
                ],
              )
            ],
          ),
        ).paddingSymmetric(
          horizontal: AppDimens.halfPadding,
          vertical: AppDimens.padding,
        ),
      ),
    );
  }
}
