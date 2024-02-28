// ignore_for_file: deprecated_member_use_from_same_package

import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:upayza/generated/assets.gen.dart';
import 'package:upayza/src/features/User_profile_views/views/components/gender_form_radio.dart';
import 'package:upayza/src/shared/components/forms/app_form_prefix_icon.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/components/buttons/app_button.dart';
import 'package:upayza/src/shared/components/forms/app_form_field.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';
import 'package:upayza/src/shared/utils/app_translate.dart';

@RoutePage()
class UserUpdateProfileViewPage extends StatefulWidget {
  const UserUpdateProfileViewPage({super.key});

  @override
  State<UserUpdateProfileViewPage> createState() =>
      _UserUpdateProfileViewPageState();
}

class _UserUpdateProfileViewPageState extends State<UserUpdateProfileViewPage> {
  final formkey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController uuidController = TextEditingController();
  final bool isMen = false, isFemale = false;
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
                      const AppTitle.h4(title: "Update Profile")
                    ],
                  )
                ],
              ),
              AppDimens.tripleSpacing.heightBox,
              Container(
                alignment: Alignment.center,
                child: Assets.icons.editProfile
                    .svg(
                      color: context.colorScheme.secondary,
                      height: AppDimens.iconSize * 3,
                      width: AppDimens.iconSize * 3,
                    )
                    .paddingSymmetric(
                      vertical: AppDimens.halfPadding,
                    ),
              ),
              Form(
                key: formkey,
                child: Column(
                  children: [
                    AppFormField(
                      controller: nameController,
                      labelText: "Name",
                      prefixIcon: AppFormPrefixIcon(
                        icon: Assets.icons.userSquare.svg(
                          color: context.colorScheme.secondary,
                        ),
                      ),
                    ),
                    AppFormField(
                      controller: usernameController,
                      labelText: "Username",
                      prefixIcon: AppFormPrefixIcon(
                        icon: Assets.icons.userSquare.svg(
                          color: context.colorScheme.secondary,
                        ),
                      ),
                    ),
                    AppFormField(
                      controller: dobController,
                      labelText: "Date of birth",
                      prefixIcon: AppFormPrefixIcon(
                        icon: Assets.icons.iconlyLightCalendar.svg(
                          color: context.colorScheme.secondary,
                        ),
                      ),
                    ),
                    const GenderFormRadio(),
                    AppFormField(
                      controller: addressController,
                      labelText: "Address",
                      prefixIcon: AppFormPrefixIcon(
                        icon: Assets.icons.iconlyLightLocation.svg(
                          color: context.colorScheme.secondary,
                        ),
                      ),
                    ),
                    AppFormField(
                      controller: phoneController,
                      labelText: "Phone",
                      prefixIcon: AppFormPrefixIcon(
                        icon: Assets.icons.smartPhone.svg(
                          color: context.colorScheme.secondary,
                        ),
                      ),
                    ),
                    AppFormField(
                      controller: uuidController,
                      readOnly: true,
                      labelText: "Identifier",
                      prefixIcon: AppFormPrefixIcon(
                        icon: Assets.icons.userSquare.svg(
                          color: context.colorScheme.secondary,
                        ),
                      ),
                    ),
                    AppDimens.tripleSpacing.heightBox,
                    AppButton(
                      title: "Update",
                      onPressed: () {},
                    )
                  ],
                ),
              ).paddingSymmetric(
                horizontal: AppDimens.padding,
                vertical: AppDimens.padding,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
