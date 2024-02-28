import 'dart:developer';
import 'dart:io';

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:upayza/main.dart';

class AppHelpers {
  AppHelpers._();

  static showAlert({required BuildContext context, required Widget child}) {
    return showAdaptiveDialog(
      context: context,
      builder: (context) {
        return child;
      },
    );
  }

  static String formatNumber(num number) {
    return NumberFormat.decimalPattern().format(number);
  }

  static Future<File?> loadImageFromCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? picture = await picker.pickImage(
      source: ImageSource.camera,
      maxWidth: 600,
      maxHeight: 600,
    );
    return (picture != null) ? File(picture.path) : null;
  }

  static Future<File?> loadImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? picture = await picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 600,
      maxHeight: 600,
    );
    return (picture != null) ? File(picture.path) : null;
  }

  static bool isMtn(String value) {
    return (value.startsWith('650') ||
            value.startsWith('651') ||
            value.startsWith('652') ||
            value.startsWith('653') ||
            value.startsWith('654') ||
            value.startsWith('67') ||
            value.startsWith('68'))
        ? true
        : false;
  }

  static void requestPermission() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      return log('permission ==> User granted ');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      return log('permission ==> User granted provisional permission.');
    } else {
      return log('permission ==> User declined permission. ');
    }
  }

  static getDeviceFirebaseToken() async {
    final token = await FirebaseMessaging.instance.getToken();
    log('*************************************************');
    log('DeviceToken ==> $token');
    log('*************************************************');
  }

  static void initializeNotifications() {
    const android = AndroidInitializationSettings('@mipmap/launcher_icon');
    const ios = DarwinInitializationSettings();
    const initializeSettings = InitializationSettings(
      android: android,
      iOS: ios,
    );
    notificationsLocale.initialize(
      initializeSettings,
      onDidReceiveNotificationResponse: (NotificationResponse response) {},
    );

    FirebaseMessaging.onMessage.listen(
      (RemoteMessage message) async {
        log("foreground msg ==> ${message.messageId}");
        AndroidNotificationDetails androidNotificationDetails =
            const AndroidNotificationDetails(
          "upayza",
          "upayza",
          importance: Importance.high,
          priority: Priority.high,
          playSound: true,
        );
        NotificationDetails notificationDetails = NotificationDetails(
          android: androidNotificationDetails,
          iOS: const DarwinNotificationDetails(),
        );
        await notificationsLocale.show(
          0,
          message.notification?.title,
          message.notification?.body,
          notificationDetails,
          payload: message.data['title'],
        );
      },
    );

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
      log("foreground2 msg ==> ${message.messageId}");
    });
  }

  static String generateInitial({required String name, required String surname}) {
    return name[0].capitalizeFirst() + surname[0].capitalizeFirst();
  }
}
