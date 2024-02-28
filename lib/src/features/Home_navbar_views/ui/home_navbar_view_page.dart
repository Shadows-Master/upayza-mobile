// ignore_for_file: deprecated_member_use_from_same_package

import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:upayza/generated/assets.gen.dart';
import 'package:upayza/generated/fonts.gen.dart';
import 'package:upayza/src/core/routing/app_router.dart';
import 'package:upayza/src/features/Home_navbar_views/datasources/models/ui_data_home.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';
import 'package:upayza/src/shared/utils/app_translate.dart';

@RoutePage()
class HomeNavbarViewPage extends StatefulWidget {
  const HomeNavbarViewPage({super.key});

  @override
  State<HomeNavbarViewPage> createState() => _HomeNavbarViewPageState();
}

class _HomeNavbarViewPageState extends State<HomeNavbarViewPage> {
  @override
  Widget build(BuildContext context) {
    List<UiDataHome> data = [
      UiDataHome(
        label: T(context).home,
        iconData: Iconsax.home,
      ),
      UiDataHome(
        label: T(context).card,
        iconData: Iconsax.cards,
      ),
      UiDataHome(
        label: '',
        iconData: Iconsax.arrow_swap,
      ),
      UiDataHome(
        label: T(context).history,
        iconData: Iconsax.chart,
      ),
      UiDataHome(
        label: T(context).more,
        iconData: Iconsax.more,
      ),
    ];
    return AutoTabsScaffold(
      routes: const [
        DashboardViewRoute(),
        CardViewRoute(),
        TransactionsViewRoute(),
        HistoryTransactionsViewRoute(),
        SettingViewRoute(),
      ],
      animationDuration: const Duration(milliseconds: 500),
      animationCurve: Curves.easeInCirc,
      transitionBuilder: (_, child, animation) {
        final tabsRouter = _.tabsRouter;
        return Scaffold(
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            enableFeedback: true,
            elevation: 0,
            showUnselectedLabels: true,
            selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppDimens.h4,
              fontFamily: FontFamily.radikal,
            ),
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: AppDimens.h4,
              fontFamily: FontFamily.radikal,
              color: context.colorScheme.tertiary.withOpacity(.4),
            ),
            backgroundColor: context.colorScheme.background,
            selectedItemColor: context.colorScheme.primary,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Assets.icons.home.svg(
                  color: context.colorScheme.tertiary.withOpacity(.4),
                ),
                label: data[0].label,
                activeIcon: Assets.icons.homeFill.svg(
                  color: context.colorScheme.primary,
                ),
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.bankCarddoubleOutline.svg(
                  color: context.colorScheme.tertiary.withOpacity(.4),
                ),
                label: data[1].label,
                activeIcon: Assets.icons.bankCardDouble.svg(
                  color: context.colorScheme.primary,
                ),
              ),
              BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundColor: context.colorScheme.primary,
                  child: const Icon(
                    Iconsax.arrow_swap,
                    color: Colors.white,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.barChartVerticalalt.svg(
                  color: context.colorScheme.tertiary.withOpacity(.4),
                ),
                label: data[3].label,
                activeIcon: Assets.icons.chartThreeLine.svg(
                  color: context.colorScheme.primary,
                ),
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.more
                    .svg(
                      height: 7.5,
                      width: 7.5,
                      color: context.colorScheme.tertiary.withOpacity(.4),
                    )
                    .paddingOnly(
                      top: AppDimens.halfPadding * 1.4,
                    ),
                label: data[4].label,
                activeIcon: Assets.icons.moreFill
                    .svg(
                      height: 7.5,
                      width: 7.5,
                      color: context.colorScheme.primary,
                    )
                    .paddingOnly(
                      top: AppDimens.halfPadding * 1.4,
                    ),
              ),
            ],
          ),
        );
      },
    );
  }
}
