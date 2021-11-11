import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../core/shared_widgets/auth_large_button.dart';
import '../../core/util/app_colors.dart';
import '../../core/shared_widgets/app_text_field.dart';
import '../../core/util/app_text_styles.dart';
import 'view_model/normal_user_signup_viewmodel.dart';

class NormalUserSignupView extends StatelessWidget {
  final int index;
  final PageController pageController;
  const NormalUserSignupView({Key key, this.index, this.pageController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NormalUserSignupViewModel>.reactive(
      onDispose: () {
        pageController.dispose();
      },
      viewModelBuilder: () => NormalUserSignupViewModel(),
      builder: (context, model, child) {
        return Container(
          height: 340,
          width: 325,
          padding: const EdgeInsets.only(
            left: 28,
            right: 28,
            top: 24,
          ),
          decoration: BoxDecoration(
            color: AppColors.beachSand,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
            ),
          ),
          child: Column(
            children: [
              Text(
                'SignUp',
                textAlign: TextAlign.center,
                style: headerTwo.copyWith(
                  color: AppColors.deepDarkBlue,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Username',
                  textAlign: TextAlign.left,
                  style: onBoardSubTitle.copyWith(
                    color: AppColors.deepDarkBlue,
                  ),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              AppTextField(
                hintText: 'username',
                index: index,
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: 3,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email',
                  textAlign: TextAlign.left,
                  style: onBoardSubTitle.copyWith(
                    color: AppColors.deepDarkBlue,
                  ),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              AppTextField(
                hintText: 'email',
                index: index,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 3,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Password',
                  textAlign: TextAlign.left,
                  style: onBoardSubTitle.copyWith(
                    color: AppColors.deepDarkBlue,
                  ),
                ),
              ),
              AppTextField(
                hintText: 'password',
                index: index,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
              Text(
                'By entering your details, your are agreeing to our Terms of Service and Privacy Policy. Thanks!',
                textAlign: TextAlign.justify,
                style: privacyText.copyWith(
                  color: AppColors.textGray,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 34, right: 34),
                child: AuthLargeButton(
                  onTap: () {
                    pageController.nextPage(
                      duration: Duration(seconds: 3),
                      curve: Curves.bounceOut,
                    );
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
