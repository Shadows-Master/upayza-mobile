import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:upayza/src/core/app_initializer.dart';
import 'package:upayza/src/core/application.dart';
import 'package:upayza/src/shared/observers/app_logger_observer.dart';
import 'package:upayza/src/shared/push_notifications/app_firebase_messaging.dart';

FlutterLocalNotificationsPlugin notificationsLocale =
    FlutterLocalNotificationsPlugin();

void main() {
  final AppInitializer appInitializer = AppInitializer();
  runZonedGuarded(() async {
    await appInitializer.preAppRun();
    await AppFirebaseMessaging().init();
    runApp(
      ProviderScope(
        observers: [AppLoggerObserver()],
        child: const Application(),
      ),
    );
    appInitializer.postAppRun();
  }, (error, stack) {
    log("message ===> ${error.toString()}");
  });
}
