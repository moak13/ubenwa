import 'package:flutter/material.dart';
import 'package:ubenwa/core/util/app_colors.dart';
import 'package:ubenwa/core/util/app_text_styles.dart';

class CardButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function onTap;
  final int currentIndex;
  final bool isSelected;
  const CardButton({
    Key key,
    this.label,
    this.icon,
    this.onTap,
    this.currentIndex,
    this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 162.5,
        decoration: BoxDecoration(
          color: currentIndex == 0 ? AppColors.white : AppColors.beachSand,
          borderRadius: currentIndex == 0
              ? BorderRadius.only(bottomLeft: Radius.circular(32))
              : BorderRadius.only(bottomRight: Radius.circular(32)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected
                  ? AppColors.deepDarkBlue
                  : AppColors.deSelectedGray,
              size: 24,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              label,
              style: login.copyWith(
                color: isSelected
                    ? AppColors.deepDarkBlue
                    : AppColors.deSelectedGray,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
