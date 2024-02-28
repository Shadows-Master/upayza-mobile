import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/components/forms/app_dropdown_field.dart';
import 'package:upayza/src/shared/components/forms/app_form_prefix_icon.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';

class AppCountryDropdown extends ConsumerWidget {
  AppCountryDropdown({super.key});
  final TextEditingController searchController = TextEditingController();
  final List<String> countries = ["Cameroon", "Ivory Coast"];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppDropdownField(
            hintText: "Cameroon",
            icon: const AppFormPrefixIcon(icon: Icon(Iconsax.flag)),
            items: countries.map(
              (e) {
                return DropdownMenuItem<String>(
                  value: e,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppTitle(title: e),
                    ],
                  ),
                );
              },
            ).toList(),
            searchDropdownController: searchController,
            onChanged: (value) {},
            searchMatchFn: (item, searchValue) {
              return item.value.toLowerCase().contains(
                    searchValue.toLowerCase(),
                  );
            })
        .paddingSymmetric(horizontal: AppDimens.halfPadding)
        .animate()
        .fadeIn(duration: 500.ms)
        .slide();
  }
}
