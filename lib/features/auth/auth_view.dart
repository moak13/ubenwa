import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

import '../../core/extension/string_extension.dart';
import '../../core/shared_widgets/ubenwa_icons.dart';
import '../../core/util/app_colors.dart';
import '../../core/util/app_text_styles.dart';
import '../auth_clinical_user/auth_clinical_user_view.dart';
import '../auth_normal_user/auth_normal_user_view.dart';
import 'view_model/auth_viewmodel.dart';
import 'widgets/card_button.dart';
import 'widgets/card_toggler.dart';
import 'widgets/social_button.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthViewModel>.reactive(
      viewModelBuilder: () => AuthViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(top: 78),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColors.beachSand.withOpacity(0.5),
                    AppColors.lightBlue.withOpacity(0.5),
                  ],
                ),
              ),
              child: Column(
                children: [
                  SvgPicture.asset(
                    'Ubenwa'.svg,
                    height: 74,
                    width: 89,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Ubenwa',
                    style: authText.copyWith(
                      color: AppColors.deepDarkBlue,
                    ),
                  ),
                  SizedBox(
                    height: 59,
                  ),
                  CardToggler(
                    currentIndex: model.currentIndex,
                    setIndex: model.setIndex,
                    child: IndexedStack(
                      index: model.currentIndex,
                      children: [
                        SizedBox(
                          height: 340,
                          width: 325,
                          child: AuthClinicalUserView(
                            index: model.currentIndex,
                          ),
                        ),
                        SizedBox(
                          height: 340,
                          width: 325,
                          child: AuthNormalUserView(
                            index: model.currentIndex,
                          ),
                        ),
                      ],
                    ),
                    children: [
                      CardButton(
                        label: 'Clinical User',
                        icon: Ubenwa.clinical_user,
                        onTap: () {},
                      ),
                      CardButton(
                        label: 'Regular User',
                        icon: Ubenwa.normal_user,
                        onTap: () {},
                      )
                    ],
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Text(
                    'or signup with',
                    textAlign: TextAlign.center,
                    style: privacyText.copyWith(
                      color: AppColors.deSelectedGray,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SocialButton(
                        image: 'Facebook',
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      SocialButton(
                        image: 'Twitter',
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      SocialButton(
                        image: 'LinkedIn',
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      SocialButton(
                        image: 'Group',
                        onTap: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
