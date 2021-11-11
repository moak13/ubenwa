import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../locator.dart';

class ClinicalUserLoginViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();

  showEndOfRoad() {
    _dialogService.showDialog(
        title: 'Info!',
        description:
            'Hi there! Thanks for going through the flow. We have gotten to the end of the road.');
  }
}
