import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../core/services/local_storage_service.dart';
import '../../../core/util/router.gr.dart';
import '../../../locator.dart';

class OnboardViewModel extends IndexTrackingViewModel {
  final _navigationService = locator<NavigationService>();
  final _localStorageService = locator<LocalStorageService>();

  List<OnBoardItem> _onboardList = [
    OnBoardItem(
      title: 'Cuite Baby',
      subTitle:
          'By entering your details, your are agreeing to our Terms of Service and Privacy Policy. Thanks!',
      image: 'Onboarding(1)',
    ),
    OnBoardItem(
      title: 'Record Cry',
      subTitle:
          'By entering your details, your are agreeing to our Terms of Service and Privacy Policy. Thanks!',
      image: 'Onboarding(3)',
    ),
    OnBoardItem(
      title: 'Screening Cry',
      subTitle:
          'By entering your details, your are agreeing to our Terms of Service and Privacy Policy. Thanks!',
      image: 'Onboarding(2)',
    ),
  ];

  List<OnBoardItem> get onboardList => _onboardList;

  saveSeen() {
    _navigationService.navigateTo(Routes.auth_view);
    _localStorageService.saveOnboardSeen(value: true);
  }
}

class OnBoardItem {
  final String title;
  final String subTitle;
  final String image;

  OnBoardItem({
    this.title,
    this.subTitle,
    this.image,
  });
}
