import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// import 'package:stacked_services/stacked_services.dart';
import 'package:ubenwa/core/util/router.gr.dart';

class AuthNormalUserView extends StatelessWidget {
  const AuthNormalUserView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExtendedNavigator<Auth_viewRouter>(
        router: Auth_viewRouter(),
        initialRoute: AuthNormalUserViewRoutes.normal_user_signup_view,
        // navigatorKey: StackedService.navigatorKey,
      ),
    );
  }
}
