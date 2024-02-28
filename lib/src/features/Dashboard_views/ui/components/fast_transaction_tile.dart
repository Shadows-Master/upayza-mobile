import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:upayza/src/features/Dashboard_views/datasources/data/model.dart';
import 'package:upayza/src/shared/components/app_image_container.dart';
import 'package:upayza/src/shared/components/app_title.dart';
import 'package:upayza/src/shared/constants/app_colors_scheme.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/constants/app_string.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';
import 'package:upayza/src/shared/utils/app_helpers.dart';

class FastTransactionTile extends ConsumerWidget {
  const FastTransactionTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameColor = AppColorsScheme.lightColorScheme.onBackground;
    final colorBox = AppColorsScheme.lightColorScheme.primary.withOpacity(.2);
    return SizedBox(
      height: AppDimens.smContainerSize * 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppTitle(
            title: AppString.rapidTransfer,
            fontWeight: FontWeight.w800,
          ),
          AppDimens.spacing.heightBox,
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: data.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final user = data.elementAt(index);
              final userInitial = AppHelpers.generateInitial(
                name: user.surname,
                surname: user.name,
              );

              return Container(
                height: AppDimens.smContainerSize * 1.85,
                margin: const EdgeInsets.only(right: AppDimens.spacing * 1.3),
                decoration: BoxDecoration(
                  color: colorBox,
                  borderRadius: BorderRadius.circular(AppDimens.borderRadius),
                  boxShadow: context.boxShadow,
                ),
                child: Row(
                  children: [
                    Container(
                      width: AppDimens.smContainerSize * 1.3,
                      decoration: BoxDecoration(
                        color: AppColorsScheme.lightColorScheme.secondary,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(AppDimens.borderRadius),
                          bottomLeft: Radius.circular(AppDimens.borderRadius),
                        ),
                      ),
                      child: AppTitle.h2(
                        title: userInitial,
                        fontWeight: FontWeight.bold,
                        color: nameColor,
                      ).toCenter(),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppTitle(
                          title: "${user.name} ${user.surname}",
                          fontWeight: FontWeight.bold,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            AppImageContainer(imageUrl: user.countryFlag),
                            AppDimens.halfSpacing.widthBox,
                            AppTitle.h5(
                              title: user.countryName,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        )
                      ],
                    ).paddingSymmetric(horizontal: AppDimens.halfPadding)
                  ],
                ),
              );
            },
          ).paddingSymmetric(vertical: AppDimens.halfPadding / 1.2).expanded(),
        ],
      ),
    ).paddingSymmetric(vertical: AppDimens.doublePadding);
  }
}
