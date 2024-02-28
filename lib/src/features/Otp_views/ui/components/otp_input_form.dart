import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';

class OtpInputForm extends StatelessWidget {
  OtpInputForm({super.key});

  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final focusedBorderColor = context.colorScheme.primary;
    const fillColor = Color.fromRGBO(243, 246, 249, 0);

    final defaultPinTheme = PinTheme(
      width: AppDimens.containerSize,
      height: AppDimens.containerSize / 1.45,
      textStyle: context.textTheme.headlineLarge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimens.borderRadius),
        border: Border.all(color: context.colorScheme.primary),
      ),
    );
    return Form(
      child: Pinput(
        controller: pinController,
        focusNode: focusNode,
        length: 6,
        androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
        listenForMultipleSmsOnAndroid: true,
        defaultPinTheme: defaultPinTheme,
        separatorBuilder: (index) => const SizedBox(
          width: AppDimens.halfSpacing,
        ),
        validator: (value) {
          return value == '2222' ? null : 'Pin is incorrect';
        },
        // onClipboardFound: (value) {
        //   debugPrint('onClipboardFound: $value');
        //   pinController.setText(value);
        // },
        hapticFeedbackType: HapticFeedbackType.lightImpact,
        onCompleted: (pin) {
          debugPrint('onCompleted: $pin');
        },
        onChanged: (value) {
          debugPrint('onChanged: $value');
        },
        focusedPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            borderRadius: BorderRadius.circular(AppDimens.borderRadius),
            border: Border.all(color: focusedBorderColor),
          ),
        ),
        submittedPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            color: fillColor,
            borderRadius: BorderRadius.circular(AppDimens.borderRadius),
            border: Border.all(color: focusedBorderColor),
          ),
        ),
        errorPinTheme: defaultPinTheme.copyBorderWith(
          border: Border.all(color: context.colorScheme.error),
        ),
      ),
    );
  }
}
