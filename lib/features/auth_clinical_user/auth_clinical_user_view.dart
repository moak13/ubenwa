import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../clinical_user_login/clinical_user_login_view.dart';
import '../clinical_user_phone/clinical_user_phone_view.dart';
import '../clinical_user_signup/clinical_user_signup_view.dart';
import 'view_model/auth_clinical_user_viewmodel.dart';

class AuthClinicalUserView extends StatelessWidget {
  final int index;
  AuthClinicalUserView({Key key, this.index}) : super(key: key);

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthClinicalUserViewModel>.reactive(
      onDispose: () {
        _pageController.dispose();
      },
      builder: (context, model, child) {
        return PageView(
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          children: [
            ClinicalUserSignupView(
              index: index,
              pageController: _pageController,
            ),
            ClinicalUserPhoneView(
              index: index,
              pageController: _pageController,
            ),
            ClinicalUserLoginView(
              index: index,
              pageController: _pageController,
            )
          ],
        );
      },
      viewModelBuilder: () => AuthClinicalUserViewModel(),
    );
  }
}
