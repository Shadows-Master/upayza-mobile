import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';
import 'package:upayza/src/shared/states/theme/app_theme_state.dart';

class AppThemeModeSwitcher extends ConsumerWidget {
  const AppThemeModeSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(appThemeStateProvider);
    return SizedBox(
      height: AppDimens.smContainerSize / 3,
      width: AppDimens.smContainerSize,
      child: Switch(
        value: themeMode.name == "dark" ? true : false, //false or true
        onChanged: (value) {
          ref.read(appThemeStateProvider.notifier).setTheme();
        },
        activeColor: context.colorScheme.secondary,
      ),
    );
  }
}
