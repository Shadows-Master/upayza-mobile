import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:upayza/src/shared/preferences/app_locale_preferences.dart';
import 'package:upayza/src/shared/preferences/app_theme_preferences.dart';

class AppInitializer {
  /// Initialize services, plugins, etc. before the app runs.
  Future<void> preAppRun() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    await AppThemePreferences.ensureInitialized();
    await AppLocalePreferences.ensureInitialized();
  }

  /// Initialize services, plugins, etc. after the app runs.
  Future<void> postAppRun() async {}
}
