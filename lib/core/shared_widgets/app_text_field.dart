import 'package:flutter/material.dart';

import '../util/app_colors.dart';
import '../util/app_text_styles.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final Widget prefix;
  final int index;
  const AppTextField({
    Key key,
    this.controller,
    this.focusNode,
    this.hintText,
    this.obscureText = false,
    this.keyboardType,
    this.index,
    this.prefix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: onBoardSubTitle.copyWith(height: 0),
      obscureText: obscureText,
      controller: controller,
      focusNode: focusNode,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefix: prefix,
        hintText: hintText,
        fillColor: AppColors.audioVisuals1.withOpacity(0.7),
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: index == 0 ? AppColors.beachSand : AppColors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(23),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: index == 0 ? AppColors.beachSand : AppColors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(23),
        ),
      ),
    );
  }
}
