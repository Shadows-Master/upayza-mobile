import 'package:auto_route/auto_route.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:upayza/src/core/i18n/l10n.dart';
import 'package:upayza/src/core/theme/app_theme.dart';
import 'package:upayza/src/shared/states/locale/app_locale_state.dart';
import 'package:upayza/src/shared/states/routing/app_router_state.dart';
import 'package:upayza/src/shared/states/theme/app_theme_state.dart';

class Application extends ConsumerWidget {
  const Application({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.read(appRouterProvider);
    final themeMode = ref.watch(appThemeStateProvider);
    final locale = ref.watch(appLocaleStateProvider);
    return MaterialApp.router(
      routerConfig: appRouter.config(
        navigatorObservers: () => [AutoRouterObserver()],
      ),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        I18n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: locale,
      supportedLocales: I18n.delegate.supportedLocales,
    );
  }
}
