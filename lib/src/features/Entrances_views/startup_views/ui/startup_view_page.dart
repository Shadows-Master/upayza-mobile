import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:upayza/src/core/routing/app_router.dart';
import 'package:upayza/src/features/Entrances_views/startup_views/ui/components/language_dropdown_component.dart';
import 'package:upayza/src/shared/components/buttons/app_button.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';
import 'package:upayza/src/shared/utils/app_internet_checker.dart';
import 'package:upayza/src/shared/utils/app_translate.dart';

@RoutePage()
class StartupViewPage extends ConsumerStatefulWidget {
  const StartupViewPage({super.key});

  @override
  ConsumerState createState() => _StartupViewPageState();
}

class _StartupViewPageState extends ConsumerState<StartupViewPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(microseconds: 5), () {
      context.router.replace(const LanguageViewRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    final internetStatus = ref.watch(internetCheckerState);
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: (internetStatus == NetworkStatus.on)
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      T(context).helloWorld,
                      style: context.displaySmall,
                    ),
                  ),
                  AppDimens.doubleSpacing.heightBox,
                  const LanguageDropdown(),
                  AppDimens.doubleSpacing.heightBox,
                  AppButton(
                    title: "title",
                    onPressed: () {},
                  )
                ],
              )
            : const Text(
                'Internet is not working',
                style: TextStyle(fontSize: 20),
              ).paddingAll(25.0),
      ),
    );
  }
}
