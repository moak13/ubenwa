import 'package:flutter/material.dart';

import '../util/app_colors.dart';
import '../util/app_text_styles.dart';

class AuthLargeButton extends StatelessWidget {
  final String text;
  final Function onTap;
  const AuthLargeButton({Key key, this.text, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 34,
        width: 200,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(67),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.audioVisuals1,
              AppColors.audioVisuals2,
            ],
          ),
        ),
        child: Text(
          text ?? 'Continue',
          style: authButton.copyWith(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
