import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../core/shared_widgets/auth_large_button.dart';
import '../../core/util/app_colors.dart';
import '../../core/shared_widgets/app_text_field.dart';
import '../../core/util/app_text_styles.dart';
import 'view_model/clinical_user_login_viewmodel.dart';

class ClinicalUserLoginView extends StatelessWidget {
  final int index;
  final PageController pageController;
  const ClinicalUserLoginView({Key key, this.index, this.pageController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ClinicalUserLoginViewModel>.reactive(
      viewModelBuilder: () => ClinicalUserLoginViewModel(),
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
            color: AppColors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
            ),
          ),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                'Login',
                textAlign: TextAlign.center,
                style: headerTwo.copyWith(
                  color: AppColors.deepDarkBlue,
                ),
              ),
              SizedBox(
                height: 20,
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
              SizedBox(
                height: 12,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'forgot password?',
                  textAlign: TextAlign.justify,
                  style: privacyText.copyWith(
                    color: AppColors.textGray,
                  ),
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 34, right: 34),
                child: AuthLargeButton(
                  onTap: () {
                    model.showEndOfRoad();
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
