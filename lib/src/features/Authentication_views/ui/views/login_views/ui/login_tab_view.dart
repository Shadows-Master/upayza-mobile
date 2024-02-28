import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:upayza/generated/assets.gen.dart';
import 'package:upayza/src/core/routing/app_router.dart';
import 'package:upayza/src/features/Authentication_views/datasources/states/password_state.dart';
import 'package:upayza/src/features/Authentication_views/datasources/states/phone_enable_state.dart';
import 'package:upayza/src/features/Authentication_views/ui/components/app_authentication_option_button.dart';

import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/components/buttons/app_button.dart';
import 'package:upayza/src/shared/components/forms/app_form_field.dart';
import 'package:upayza/src/shared/components/forms/app_form_prefix_icon.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';

class LoginTabView extends ConsumerWidget {
  LoginTabView({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isHide = ref.watch(passwordStateProvider);
    final isPhoneEnabled = ref.watch(phoneEnableStateProvider);
    return Form(
      key: formKey,
      child: ListView(
        children: [
          AppFormField(
            labelText: (isPhoneEnabled) ? "Phone Number" : "E-mail Address",
            controller: (isPhoneEnabled) ? phoneController : emailController,
            prefixIcon: AppFormPrefixIcon(
              icon: (isPhoneEnabled)
                  ? Assets.icons.smartPhone.svg()
                  : Assets.icons.email.svg(),
            ),
            keyboardType: (isPhoneEnabled)
                ? TextInputType.phone
                : TextInputType.emailAddress,
          ),
          AppFormField(
            labelText: "Password",
            isPassword: isHide,
            controller: passwordController,
            prefixIcon: AppFormPrefixIcon(
              icon: Assets.icons.key.svg(),
            ),
            suffixIcon: Icon(
              isHide ? IconlyBroken.hide : IconlyBroken.show,
            ).onTap(() {
              ref.read(passwordStateProvider.notifier).isPasswordHide();
            }),
          ),
          const AppTitle(title: "Forgot Password")
              .alignAtCenterRight()
              .onTap(() {
            context.router.navigate(ResetPasswordViewRoute());
          }).paddingSymmetric(vertical: AppDimens.doublePadding),
          AppAuthenticationOptionButton(
            title: "Continue with Google",
            icon: Assets.icons.google.svg(),
          ),
          AppAuthenticationOptionButton(
            title: "Sign In with phone number",
            icon: Assets.icons.smartPhone.svg(),
          ).onTap(() {
            ref.read(phoneEnableStateProvider.notifier).isPhoneEnabled();
          }),
          AppDimens.tripleSpacing.heightBox,
          AppDimens.tripleSpacing.heightBox,
          AppButton(
            title: "Connexion",
            onPressed: () {
              context.router.replace(const OtpViewRoute());
             },
          ),
          AppDimens.doubleSpacing.heightBox,
        ],
      ),
    );
  }
}
