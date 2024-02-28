import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:upayza/src/core/routing/app_router.dart';
import 'package:upayza/src/features/Authentication_views/datasources/states/password_reset_state.dart';
import 'package:upayza/src/shared/components/app_authentication_header.dart';
import 'package:upayza/src/shared/components/buttons/app_button.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';

import 'components/check_mail_for_password_reset_form.dart';
import 'components/new_password_form.dart';

@RoutePage()
class ResetPasswordViewPage extends ConsumerWidget {
  ResetPasswordViewPage({super.key});

  final emailController = TextEditingController();
  final emailFocusNode = FocusNode();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasCode = ref.watch(passwordResetStateProvider);
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDimens.tripleSpacing.heightBox,
            const AppAuthenticationHeader(
              title: "Reset your password",
              description: "Insert your E-Mail Address",
            ),
            AppDimens.tripleSpacing.heightBox,
            (hasCode) ? NewPasswordForm() : CheckMailForPasswordResetForm(),
            const Spacer(),
            AppButton(
              title: "Continue",
              onPressed: () {
                (hasCode)
                    ? context.router.replace(const OtpViewRoute())
                    : ref.read(passwordResetStateProvider.notifier).hasCode();
              },
            ),
            AppDimens.doubleSpacing.heightBox,
          ],
        ).paddingSymmetric(horizontal: AppDimens.padding),
      ),
    );
  }
}
