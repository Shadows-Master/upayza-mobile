import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:upayza/generated/assets.gen.dart';
import 'package:upayza/src/features/Entrances_views/startup_views/datasources/models/language.dart';
import 'package:upayza/src/shared/components/forms/app_dropdown_field.dart';
import 'package:upayza/src/shared/components/forms/app_form_prefix_icon.dart';
import 'package:upayza/src/shared/states/locale/app_locale_state.dart';
import 'package:upayza/src/shared/utils/app_translate.dart';

class LanguageDropdown extends ConsumerStatefulWidget {
  const LanguageDropdown({super.key});

  @override
  ConsumerState createState() => _LanguageDropdownState();
}

class _LanguageDropdownState extends ConsumerState<LanguageDropdown> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final currentLocale = ref.watch(appLocaleStateProvider);
    final List<Language> data = [
      Language(title: T(context).french, code: 'fr'),
      Language(title: T(context).english, code: 'en'),
      Language(title: T(context).spanish, code: 'es'),
    ];
    final languageValue = data.firstWhere((e) {
      return e.code == currentLocale.languageCode;
    });
    return AppDropdownField(
        hintText: languageValue.title,
        icon:  AppFormPrefixIcon(icon: Assets.icons.translateLanguage.svg()),
        items: data.map((e) {
          return DropdownMenuItem<Language>(
            value: e,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  e.title,
                  style: context.headlineMedium,
                ),
                (currentLocale.languageCode == e.code)
                    ? const Icon(Icons.check_circle_outline_outlined)
                    : const SizedBox.shrink(),
              ],
            ),
          );
        }).toList(),
        searchDropdownController: searchController,
        onChanged: (value) {
          final code = value as Language;
          ref
              .read(appLocaleStateProvider.notifier)
              .setLocale(localeCode: code.code);
        },
        searchMatchFn: (item, searchValue) {
          return item.value!.code.toLowerCase().contains(
                searchValue.toLowerCase(),
              );
        });
  }
}
