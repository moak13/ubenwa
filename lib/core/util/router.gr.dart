// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../../features/auth/auth_view.dart';
import '../../features/onboard/onboard_view.dart';
import '../../features/splash/splash_view.dart';

class Routes {
  static const String splash_view = '/';
  static const String onboard_view = '/onboard-view';
  static const String auth_view = '/auth-view';
  static const all = <String>{
    splash_view,
    onboard_view,
    auth_view,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splash_view, page: SplashView),
    RouteDef(Routes.onboard_view, page: OnboardView),
    RouteDef(Routes.auth_view, page: AuthView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const SplashView(),
        settings: data,
      );
    },
    OnboardView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const OnboardView(),
        settings: data,
      );
    },
    AuthView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const AuthView(),
        settings: data,
      );
    },
  };
}
