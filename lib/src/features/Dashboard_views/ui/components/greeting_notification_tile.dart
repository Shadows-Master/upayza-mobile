import 'package:flutter/material.dart';
import 'package:upayza/src/features/Dashboard_views/ui/components/user_avatar_name.dart';
import 'package:upayza/src/shared/components/app_notification_badge.dart';

class GreetingNotificationTile extends StatelessWidget {
  const GreetingNotificationTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        UserAvatarName(),
        AppNotificationBadge()
      ],
    );
  }
}