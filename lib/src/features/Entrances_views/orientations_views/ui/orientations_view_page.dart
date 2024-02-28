import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:lorem_gen/lorem_gen.dart';
import 'package:upayza/src/core/routing/app_router.dart';
import 'package:upayza/src/features/Entrances_views/orientations_views/providers/page_view_state.dart';
import 'package:upayza/src/shared/components/app_logo_bubble.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/components/buttons/app_button.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';

@RoutePage()
class OrientationsViewPage extends ConsumerWidget {
  OrientationsViewPage({super.key});

  final titles = [
    Lorem.text().substring(0, 27),
    Lorem.text().substring(0, 27),
    Lorem.text().substring(0, 27),
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(pageViewStateProvider);
    final controller = PageController(initialPage: currentIndex);
    Widget dot(length, {int index = 0}) {
      final indexValue = currentIndex;
      final dotTile = List.generate(
        length,
        (index) => Container(
          height: AppDimens.borderRadius * 1.2,
          width: AppDimens.borderRadius * 1.2,
          margin: const EdgeInsets.only(right: AppDimens.halfSpacing),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: .8,
              color: context.colorScheme.scrim,
            ),
            color: indexValue == index
                ? context.colorScheme.primary
                : Colors.grey.shade100,
          ),
        ),
      );
      return Row(
        children: [...dotTile],
      ).paddingSymmetric(
        horizontal: AppDimens.doublePadding,
        vertical: AppDimens.doublePadding,
      );
    }

    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppLogoBubble(),
            AppDimens.tripleSpacing.heightBox,
            AppTitle.h2(
              title: titles.elementAt(currentIndex),
              color: context.colorScheme.primary,
              fontWeight: FontWeight.w600,
            ).paddingSymmetric(horizontal: AppDimens.doublePadding),
            dot(03, index: currentIndex),
            Expanded(
              child: PageView(
                controller: controller,
                children: List.generate(
                  3,
                  (index) => AppTitle(
                    title: Lorem.paragraph(),
                    maxLines: 3,
                    textAlign: TextAlign.justify,
                  ),
                ),
                onPageChanged: (value) {
                  ref.read(pageViewStateProvider.notifier).increment(value);
                  log("index ===> $currentIndex");
                },
              ).paddingSymmetric(horizontal: AppDimens.doublePadding),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if ((currentIndex > 0))
                  Expanded(
                    child: AppButton(
                      title: "Back",
                      onPressed: () {
                        controller.previousPage(
                          duration: const Duration(microseconds: 5),
                          curve: Curves.bounceIn,
                        );
                      },
                    ),
                  ),
                Expanded(
                  child: AppButton(
                    title: (currentIndex == 2) ? "Commencer" : "Suivant",
                    onPressed: () {
                      if (currentIndex == 2) {
                        context.router.replace(const CountryViewRoute());
                      } else {
                        controller.nextPage(
                          duration: const Duration(microseconds: 5),
                          curve: Curves.bounceIn,
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
            AppDimens.doubleSpacing.heightBox,
          ],
        ),
      ),
    );
  }
}
