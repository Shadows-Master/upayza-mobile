import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:upayza/src/features/Authentication_views/ui/authentication_view_page.dart';
import 'package:upayza/src/features/Authentication_views/ui/views/reset_password_views/ui/reset_password_view_page.dart';
import 'package:upayza/src/features/Countries_views/ui/country_view_page.dart';
import 'package:upayza/src/features/Entrances_views/orientations_views/ui/orientations_view_page.dart';
import 'package:upayza/src/features/Entrances_views/startup_views/ui/startup_view_page.dart';
import 'package:upayza/src/features/Card_views/ui/card_view_page.dart';
import 'package:upayza/src/features/Dashboard_views/ui/dashboard_view_page.dart';
import 'package:upayza/src/features/History_transactions_views/ui/history_transactions_view_page.dart';
import 'package:upayza/src/features/Home_navbar_views/ui/home_navbar_view_page.dart';
import 'package:upayza/src/features/Otp_views/ui/otp_view_page.dart';
import 'package:upayza/src/features/Settings_views/ui/setting_view_page.dart';
import 'package:upayza/src/features/User_profile_views/ui/user_profile_view_page.dart';
import 'package:upayza/src/features/User_profile_views/views/user_update_profile_view/user_update_profile_view_page.dart';
import 'package:upayza/src/features/language_views/ui/language_view_page.dart';
import 'package:upayza/src/features/transactions_views/ui/transactions_view_page.dart';
import 'package:upayza/src/features/transactions_views/views/transfer_information_views/ui/transfer_information_view_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(page: StartupViewRoute.page, initial: true),
        AutoRoute(page: LanguageViewRoute.page),
        AutoRoute(page: OrientationsViewRoute.page),
        AutoRoute(page: CountryViewRoute.page),
        AutoRoute(page: AuthenticationViewRoute.page),
        AutoRoute(page: ResetPasswordViewRoute.page),
        AutoRoute(page: OtpViewRoute.page),
        AutoRoute(
          page: HomeNavbarViewRoute.page,
          children: <AutoRoute>[
            AutoRoute(page: DashboardViewRoute.page),
            AutoRoute(page: CardViewRoute.page),
            AutoRoute(page: TransactionsViewRoute.page),
            AutoRoute(page: HistoryTransactionsViewRoute.page),
            AutoRoute(page: SettingViewRoute.page),
          ],
        ),
        AutoRoute(page: UserProfileViewRoute.page),
        AutoRoute(page: UserUpdateProfileViewRoute.page)
      ];
}
