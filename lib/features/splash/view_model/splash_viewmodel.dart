import 'dart:async';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../core/services/local_storage_service.dart';
import '../../../core/util/router.gr.dart';
import '../../../locator.dart';

class SplashViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _localStorageService = locator<LocalStorageService>();

  _moveToOnboard() {
    _navigationService.navigateTo(Routes.onboard_view);
  }

  _moveToAuth() {
    _navigationService.navigateTo(Routes.auth_view);
  }

  _decideRoute() async {
    final value = await _localStorageService.getOnboardSeen();
    if (value == true) {
      _moveToAuth();
    } else {
      _moveToOnboard();
    }
  }

  handleStartUp() async {
    final _duration = Duration(seconds: 2);
    Timer(_duration, _decideRoute);
  }
}
