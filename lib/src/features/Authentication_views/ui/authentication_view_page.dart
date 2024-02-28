import 'package:auto_route/annotations.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:upayza/src/features/Authentication_views/ui/views/login_views/ui/login_tab_view.dart';
import 'package:upayza/src/features/Authentication_views/ui/views/register_views/ui/register_tab_view.dart';
import 'package:upayza/src/shared/components/app_authentication_header.dart';
import 'package:upayza/src/shared/constants/app_dimens.dart';


@RoutePage()
class AuthenticationViewPage extends StatefulWidget {
  const AuthenticationViewPage({super.key});

  @override
  State<AuthenticationViewPage> createState() => _AuthenticationViewPageState();
}

class _AuthenticationViewPageState extends State<AuthenticationViewPage>
    with SingleTickerProviderStateMixin {
  final tabs = const [Tab(text: "Sign In"), Tab(text: "Sign Up")];
  late TabController controllerTab;
  @override
  void initState() {
    super.initState();
    controllerTab = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDimens.tripleSpacing.heightBox,
            const AppAuthenticationHeader(),
            AppDimens.tripleSpacing.heightBox,
            TabBar(
              tabs: tabs,
              controller: controllerTab,
              indicatorSize: TabBarIndicatorSize.label,
              dividerColor: Colors.transparent,
              labelStyle: context.textTheme.headlineLarge,
            ),
            Expanded(
              child: TabBarView(
                controller: controllerTab,
                children: [
                  LoginTabView(),
                  RegisterTabView(),
                ],
              ),
            )
          ],
        ),
      ).paddingSymmetric(horizontal: AppDimens.padding),
    );
  }
}
