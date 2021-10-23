import 'package:flutter/material.dart';

import '../../../core/util/app_colors.dart';
import '../../../core/util/app_text_styles.dart';

class OnboardColoredButton extends StatelessWidget {
  final String text;
  final Function onTap;
  const OnboardColoredButton({Key key, this.text, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 34,
        width: 84,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.audioVisuals1,
              AppColors.audioVisuals2,
            ],
          ),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Text(
          text,
          style: login.copyWith(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
