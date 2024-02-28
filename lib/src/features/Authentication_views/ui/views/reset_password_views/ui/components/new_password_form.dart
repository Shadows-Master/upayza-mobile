import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:upayza/generated/assets.gen.dart';
import 'package:upayza/src/features/Authentication_views/datasources/states/password_state.dart';
import 'package:upayza/src/shared/components/forms/app_form_field.dart';
import 'package:upayza/src/shared/components/forms/app_form_prefix_icon.dart';
import 'package:upayza/src/shared/mixins/form_validation_mixin.dart';

class NewPasswordForm extends ConsumerWidget with FormValidationMixin {
  NewPasswordForm({super.key});

  final codeController = TextEditingController();
  final newPasswordController = TextEditingController();
  final newPasswordConfirmedController = TextEditingController();
  final codeFocusNode = FocusNode();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isHide = ref.watch(passwordStateProvider);
    final isConfirmedHide = ref.watch(passwordConfirmedStateProvider);
    return Form(
      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppFormField(
            labelText: "Code",
            focusNode: codeFocusNode,
            controller: codeController,
            prefixIcon: AppFormPrefixIcon(
              icon: Assets.icons.passwordLock.svg(),
            ),
            keyboardType: TextInputType.emailAddress,
            onFieldSubmitted: (value) {
              codeFocusNode.unfocus();
            },
          ),
          AppFormField(
            labelText: "New Password",
            isPassword: isHide,
            controller: newPasswordController,
            prefixIcon: AppFormPrefixIcon(
              icon: Assets.icons.key.svg(),
            ),
            suffixIcon: Icon(
              isHide ? IconlyBroken.hide : IconlyBroken.show,
            ).onTap(() {
              ref.read(passwordStateProvider.notifier).isPasswordHide();
            }),
            validator: passwordValidator,
          ),
          AppFormField(
            labelText: "Confirmed New Password",
            isPassword: isConfirmedHide,
            controller: newPasswordConfirmedController,
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
            validator: passwordValidator,
          ),
        ],
      ),
    );
  }
}
