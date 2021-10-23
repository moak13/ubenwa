import 'package:auto_route/auto_route_annotations.dart';

import '../../features/auth/auth_view.dart';
import '../../features/auth_normal_user/auth_normal_user_view.dart';
import '../../features/clinical_user_signup/clinical_user_signup_view.dart';
import '../../features/normal_user_login/normal_user_login_view.dart';
import '../../features/normal_user_signup/normal_user_signup_view.dart';
import '../../features/onboard/onboard_view.dart';
import '../../features/splash/splash_view.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(
      page: SplashView,
      name: 'splash_view',
      initial: true,
    ),
    AdaptiveRoute(
      page: OnboardView,
      name: 'onboard_view',
    ),
    AdaptiveRoute(
      page: AuthView,
      name: 'auth_view',
      children: [
        AdaptiveRoute(
          page: ClinicalUserSignupView,
          name: 'clinical_user_signup_view',
        ),
        AdaptiveRoute(
          page: AuthNormalUserView,
          children: [
            AdaptiveRoute(
              path: '/',
              page: NormalUserSignupView,
              name: 'normal_user_signup_view',
            ),
            AdaptiveRoute(
              page: NormalUserLoginView,
              name: 'normal_user_login_view',
            ),
          ],
        ),
      ],
    ),
  ],
)
class $Router {}
