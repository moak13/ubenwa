import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../normal_user_login/normal_user_login_view.dart';
import '../normal_user_signup/normal_user_signup_view.dart';
import 'view_model/auth_normal_user_viewmodel.dart';

class AuthNormalUserView extends StatelessWidget {
  final int index;
  AuthNormalUserView({Key key, this.index}) : super(key: key);
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthNormalUserViewModel>.reactive(
      onDispose: () {
        _pageController.dispose();
      },
      builder: (context, model, child) {
        return PageView(
          scrollDirection: Axis.horizontal,
          controller: _pageController,
          children: [
            NormalUserSignupView(
              index: index,
              pageController: _pageController,
            ),
            NormalUserLoginView(
              index: index,
              pageController: _pageController,
            ),
          ],
        );
      },
      viewModelBuilder: () => AuthNormalUserViewModel(),
    );
  }
}
