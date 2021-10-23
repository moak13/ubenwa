import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:ubenwa/core/util/app_colors.dart';
import 'package:ubenwa/features/onboard/widgets/onboard_button.dart';
import 'package:ubenwa/features/onboard/widgets/onboard_colored_button.dart';
import 'package:ubenwa/features/onboard/widgets/walk_through.dart';

import 'view_model/onboard_viewmodel.dart';

class OnboardView extends StatelessWidget {
  const OnboardView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController _pageController;
    return ViewModelBuilder<OnboardViewModel>.reactive(
      onModelReady: (model) {
        _pageController = PageController();
      },
      onDispose: () {
        _pageController.dispose();
      },
      viewModelBuilder: () => OnboardViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          body: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topLeft,
                    colors: [
                      AppColors.lightBlue,
                      AppColors.beachSand,
                    ],
                  ),
                ),
                child: Container(
                  height: 409,
                  width: 325,
                  margin: const EdgeInsets.only(top: 81, bottom: 24),
                  decoration: BoxDecoration(
                    color: AppColors.onboardBoxColor.withOpacity(0.50),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              PageView.builder(
                controller: _pageController,
                onPageChanged: model.setIndex,
                itemCount: model.onboardList.length,
                itemBuilder: (context, index) {
                  return WalkThrough(
                    title: model.onboardList[index].title,
                    subTitle: model.onboardList[index].subTitle,
                    image: model.onboardList[index].image,
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(right: 26, top: 40),
                child: Align(
                  alignment: Alignment.topRight,
                  child: OnboardButton(
                    text: 'Skip',
                    onTap: () {
                      model.saveSeen();
                    },
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 650),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OnboardButton(
                      onTap: () {},
                      text: 'Login',
                    ),
                    DotsIndicator(
                      dotsCount: model.onboardList.length,
                      position: double.parse(model.currentIndex.toString()),
                      decorator: DotsDecorator(
                        size: const Size.square(10.0),
                        activeSize: const Size(24.0, 10.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        color: AppColors.deSelectedGray, // Inactive color
                        activeColor: AppColors.textGray,
                      ),
                    ),
                    model.currentIndex == 2
                        ? OnboardColoredButton(
                            onTap: () {
                              model.saveSeen();
                            },
                            text: 'SignUp',
                          )
                        : OnboardButton(
                            text: 'SignUp',
                            onTap: () {},
                          ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
