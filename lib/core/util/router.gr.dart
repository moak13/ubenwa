// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/auth/auth_view.dart';
import '../../features/auth_normal_user/auth_normal_user_view.dart';
import '../../features/clinical_user_signup/clinical_user_signup_view.dart';
import '../../features/normal_user_login/normal_user_login_view.dart';
import '../../features/normal_user_signup/normal_user_signup_view.dart';
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
    RouteDef(
      Routes.auth_view,
      page: AuthView,
      generator: Auth_viewRouter(),
    ),
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

class Auth_viewRoutes {
  static const String clinical_user_signup_view = '/clinical-user-signup-view';
  static const String authNormalUserView = '/auth-normal-user-view';
  static const all = <String>{
    clinical_user_signup_view,
    authNormalUserView,
  };
}

class Auth_viewRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Auth_viewRoutes.clinical_user_signup_view,
        page: ClinicalUserSignupView),
    RouteDef(
      Auth_viewRoutes.authNormalUserView,
      page: AuthNormalUserView,
      generator: AuthNormalUserViewRouter(),
    ),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    ClinicalUserSignupView: (data) {
      final args = data.getArgs<ClinicalUserSignupViewArguments>(
        orElse: () => ClinicalUserSignupViewArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ClinicalUserSignupView(
          key: args.key,
          index: args.index,
        ),
        settings: data,
      );
    },
    AuthNormalUserView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const AuthNormalUserView(),
        settings: data,
      );
    },
  };
}

class AuthNormalUserViewRoutes {
  static const String normal_user_signup_view = '/';
  static const String normal_user_login_view = '/normal-user-login-view';
  static const all = <String>{
    normal_user_signup_view,
    normal_user_login_view,
  };
}

class AuthNormalUserViewRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(AuthNormalUserViewRoutes.normal_user_signup_view,
        page: NormalUserSignupView),
    RouteDef(AuthNormalUserViewRoutes.normal_user_login_view,
        page: NormalUserLoginView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    NormalUserSignupView: (data) {
      final args = data.getArgs<NormalUserSignupViewArguments>(
        orElse: () => NormalUserSignupViewArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => NormalUserSignupView(
          key: args.key,
          index: args.index,
        ),
        settings: data,
      );
    },
    NormalUserLoginView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const NormalUserLoginView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ClinicalUserSignupView arguments holder class
class ClinicalUserSignupViewArguments {
  final Key key;
  final int index;
  ClinicalUserSignupViewArguments({this.key, this.index});
}

/// NormalUserSignupView arguments holder class
class NormalUserSignupViewArguments {
  final Key key;
  final int index;
  NormalUserSignupViewArguments({this.key, this.index});
}
