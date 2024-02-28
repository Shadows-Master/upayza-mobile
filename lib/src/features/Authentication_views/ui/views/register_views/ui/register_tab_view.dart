import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:upayza/generated/assets.gen.dart';
import 'package:upayza/src/core/routing/app_router.dart';
import 'package:upayza/src/features/Authentication_views/datasources/states/password_state.dart';
import 'package:upayza/src/features/Authentication_views/datasources/states/phone_enable_state.dart';
import 'package:upayza/src/features/Authentication_views/datasources/states/register_checkbox_state.dart';
import 'package:upayza/src/features/Authentication_views/ui/components/app_authentication_option_button.dart';
import 'package:upayza/src/shared/components/buttons/app_button.dart';
import 'package:upayza/src/shared/components/forms/app_form_field.dart';
import 'package:upayza/src/shared/components/forms/app_form_prefix_icon.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';

class RegisterTabView extends ConsumerWidget {
  RegisterTabView({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmedController = TextEditingController();
  final phoneController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isHide = ref.watch(passwordStateProvider);
    final checkBoxValue = ref.watch(registerCheckboxStateProvider);
    final isConfirmedHide = ref.watch(passwordConfirmedStateProvider);
    final isPhoneEnabled = ref.watch(phoneEnableStateProvider);
    return Form(
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
          AppFormField(
            labelText: "Confirmed Password",
            isPassword: isConfirmedHide,
            controller: passwordConfirmedController,
            prefixIcon: AppFormPrefixIcon(
              icon: Assets.icons.key.svg(),
            ),
            suffixIcon: Icon(
              isConfirmedHide ? IconlyBroken.hide : IconlyBroken.show,
            ).onTap(() {
              ref
                  .read(passwordConfirmedStateProvider.notifier)
                  .isPasswordHide();
            }),
          ),
          CheckboxListTile(
            onChanged: (value) {
              ref.read(registerCheckboxStateProvider.notifier).isChecked();
            },
            value: checkBoxValue,
            controlAffinity: ListTileControlAffinity.leading,
            title: Text.rich(
              TextSpan(
                text: "By signing up you agree to our ",
                children: [
                  TextSpan(
                    text: "Terms of Service",
                    style: context.textTheme.headlineSmall?.copyWith(
                      color: context.colorScheme.primary,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  )
                ],
                style: context.textTheme.headlineSmall,
              ),
            ),
          )
              .alignAtCenterRight()
              .onTap(() {})
              .paddingSymmetric(vertical: AppDimens.doublePadding),
          AppAuthenticationOptionButton(
            title: "Continue with Google",
            icon: Assets.icons.google.svg(),
          ),
          AppAuthenticationOptionButton(
            title: "Sign Up with phone number",
            icon: Assets.icons.smartPhone.svg(),
          ).onTap(() {
            ref.read(phoneEnableStateProvider.notifier).isPhoneEnabled();
          }),
          AppDimens.tripleSpacing.heightBox,
          AppDimens.tripleSpacing.heightBox,
          AppButton(
            title: "Register",
            onPressed: () {
              context.router.replace(const HomeNavbarViewRoute());
            },
          ),
          AppDimens.doubleSpacing.heightBox,
        ],
      ),
    );
  }
}
