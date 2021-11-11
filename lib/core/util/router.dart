import 'package:auto_route/auto_route_annotations.dart';

import '../../features/auth/auth_view.dart';
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
    ),
  ],
)
class $Router {}
