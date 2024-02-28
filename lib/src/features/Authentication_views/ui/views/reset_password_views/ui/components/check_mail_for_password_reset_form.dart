import 'package:flutter/material.dart';
import 'package:upayza/generated/assets.gen.dart';
import 'package:upayza/src/shared/components/forms/app_form_field.dart';
import 'package:upayza/src/shared/components/forms/app_form_prefix_icon.dart';
import 'package:upayza/src/shared/mixins/form_validation_mixin.dart';

class CheckMailForPasswordResetForm extends StatelessWidget
    with FormValidationMixin {
  CheckMailForPasswordResetForm({super.key});
  final emailController = TextEditingController();
  final emailFocusNode = FocusNode();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: AppFormField(
        labelText: "E-mail Address",
        focusNode: emailFocusNode,
        controller: emailController,
        prefixIcon: AppFormPrefixIcon(
          icon: Assets.icons.email.svg(),
        ),
        keyboardType: TextInputType.emailAddress,
        validator: emailValidator,
        onFieldSubmitted: (value) {
          emailFocusNode.unfocus();
        },
      ),
    );
  }
}
