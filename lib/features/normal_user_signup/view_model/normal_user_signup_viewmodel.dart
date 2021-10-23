import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../locator.dart';

class NormalUserSignupViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();

  showInfoDialog() {
    _dialogService.showDialog(
      title: 'Info',
      description:
          'The remaining views for this exam can only be achieved through nested routing based on what the design speaks. My current skill have not clue on how to tackle that with my approach of development. Regards!',
    );
  }
}
