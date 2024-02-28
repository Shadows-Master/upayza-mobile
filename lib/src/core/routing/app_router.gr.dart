// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthenticationViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthenticationViewPage(),
      );
    },
    CardViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CardViewPage(),
      );
    },
    CountryViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CountryViewPage(),
      );
    },
    DashboardViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardViewPage(),
      );
    },
    HistoryTransactionsViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HistoryTransactionsViewPage(),
      );
    },
    HomeNavbarViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeNavbarViewPage(),
      );
    },
    LanguageViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LanguageViewPage(),
      );
    },
    OrientationsViewRoute.name: (routeData) {
      final args = routeData.argsAs<OrientationsViewRouteArgs>(
          orElse: () => const OrientationsViewRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OrientationsViewPage(key: args.key),
      );
    },
    OtpViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OtpViewPage(),
      );
    },
    ResetPasswordViewRoute.name: (routeData) {
      final args = routeData.argsAs<ResetPasswordViewRouteArgs>(
          orElse: () => const ResetPasswordViewRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ResetPasswordViewPage(key: args.key),
      );
    },
    SettingViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingViewPage(),
      );
    },
    StartupViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StartupViewPage(),
      );
    },
    TransactionsViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TransactionsViewPage(),
      );
    },
    TransferInformationViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TransferInformationViewPage(),
      );
    },
    UserProfileViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserProfileViewPage(),
      );
    },
    UserUpdateProfileViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserUpdateProfileViewPage(),
      );
    },
  };
}

/// generated route for
/// [AuthenticationViewPage]
class AuthenticationViewRoute extends PageRouteInfo<void> {
  const AuthenticationViewRoute({List<PageRouteInfo>? children})
      : super(
          AuthenticationViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthenticationViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CardViewPage]
class CardViewRoute extends PageRouteInfo<void> {
  const CardViewRoute({List<PageRouteInfo>? children})
      : super(
          CardViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'CardViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CountryViewPage]
class CountryViewRoute extends PageRouteInfo<void> {
  const CountryViewRoute({List<PageRouteInfo>? children})
      : super(
          CountryViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'CountryViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DashboardViewPage]
class DashboardViewRoute extends PageRouteInfo<void> {
  const DashboardViewRoute({List<PageRouteInfo>? children})
      : super(
          DashboardViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HistoryTransactionsViewPage]
class HistoryTransactionsViewRoute extends PageRouteInfo<void> {
  const HistoryTransactionsViewRoute({List<PageRouteInfo>? children})
      : super(
          HistoryTransactionsViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryTransactionsViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeNavbarViewPage]
class HomeNavbarViewRoute extends PageRouteInfo<void> {
  const HomeNavbarViewRoute({List<PageRouteInfo>? children})
      : super(
          HomeNavbarViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeNavbarViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LanguageViewPage]
class LanguageViewRoute extends PageRouteInfo<void> {
  const LanguageViewRoute({List<PageRouteInfo>? children})
      : super(
          LanguageViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'LanguageViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrientationsViewPage]
class OrientationsViewRoute extends PageRouteInfo<OrientationsViewRouteArgs> {
  OrientationsViewRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          OrientationsViewRoute.name,
          args: OrientationsViewRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OrientationsViewRoute';

  static const PageInfo<OrientationsViewRouteArgs> page =
      PageInfo<OrientationsViewRouteArgs>(name);
}

class OrientationsViewRouteArgs {
  const OrientationsViewRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'OrientationsViewRouteArgs{key: $key}';
  }
}

/// generated route for
/// [OtpViewPage]
class OtpViewRoute extends PageRouteInfo<void> {
  const OtpViewRoute({List<PageRouteInfo>? children})
      : super(
          OtpViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'OtpViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ResetPasswordViewPage]
class ResetPasswordViewRoute extends PageRouteInfo<ResetPasswordViewRouteArgs> {
  ResetPasswordViewRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ResetPasswordViewRoute.name,
          args: ResetPasswordViewRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ResetPasswordViewRoute';

  static const PageInfo<ResetPasswordViewRouteArgs> page =
      PageInfo<ResetPasswordViewRouteArgs>(name);
}

class ResetPasswordViewRouteArgs {
  const ResetPasswordViewRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ResetPasswordViewRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SettingViewPage]
class SettingViewRoute extends PageRouteInfo<void> {
  const SettingViewRoute({List<PageRouteInfo>? children})
      : super(
          SettingViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StartupViewPage]
class StartupViewRoute extends PageRouteInfo<void> {
  const StartupViewRoute({List<PageRouteInfo>? children})
      : super(
          StartupViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'StartupViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TransactionsViewPage]
class TransactionsViewRoute extends PageRouteInfo<void> {
  const TransactionsViewRoute({List<PageRouteInfo>? children})
      : super(
          TransactionsViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'TransactionsViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TransferInformationViewPage]
class TransferInformationViewRoute extends PageRouteInfo<void> {
  const TransferInformationViewRoute({List<PageRouteInfo>? children})
      : super(
          TransferInformationViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'TransferInformationViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserProfileViewPage]
class UserProfileViewRoute extends PageRouteInfo<void> {
  const UserProfileViewRoute({List<PageRouteInfo>? children})
      : super(
          UserProfileViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserProfileViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserUpdateProfileViewPage]
class UserUpdateProfileViewRoute extends PageRouteInfo<void> {
  const UserUpdateProfileViewRoute({List<PageRouteInfo>? children})
      : super(
          UserUpdateProfileViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserUpdateProfileViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
