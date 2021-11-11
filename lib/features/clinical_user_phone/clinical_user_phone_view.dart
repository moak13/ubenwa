import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../core/shared_widgets/app_text_field.dart';
import '../../core/shared_widgets/auth_large_button.dart';
import '../../core/util/app_colors.dart';
import '../../core/util/app_text_styles.dart';
import '../../core/util/constants.dart';
import '../../core/util/helper_functions.dart';
import 'view_model/clinical_user_phone_viewmodel.dart';

class ClinicalUserPhoneView extends StatelessWidget {
  final int index;
  final PageController pageController;
  const ClinicalUserPhoneView({Key key, this.index, this.pageController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ClinicalUserPhoneViewModel>.reactive(
      viewModelBuilder: () => ClinicalUserPhoneViewModel(),
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
                'Verification',
                textAlign: TextAlign.center,
                style: headerTwo.copyWith(
                  color: AppColors.deepDarkBlue,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Enter your phone #',
                  textAlign: TextAlign.center,
                  style: onBoardSubTitle.copyWith(
                    color: AppColors.deepDarkBlue,
                  ),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              AppTextField(
                hintText: 'phone',
                index: index,
                prefix: Text(
                  HelperFunctions.convertToFlag(Constants.ng),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 34, right: 34),
                child: AuthLargeButton(
                  onTap: () {
                    pageController.nextPage(
                      duration: Duration(milliseconds: 400),
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
