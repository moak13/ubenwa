import 'package:flutter/material.dart';

import '../../../core/util/app_colors.dart';
import '../../../core/util/app_text_styles.dart';

class OnboardButton extends StatelessWidget {
  final String text;
  final Function onTap;
  const OnboardButton({
    Key key,
    this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 34,
        width: 84,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          border: Border.all(
            color: AppColors.deSelectedGray,
          ),
        ),
        child: Text(
          text,
          style: login.copyWith(
            color: AppColors.deSelectedGray,
          ),
        ),
      ),
    );
  }
}
