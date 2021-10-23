import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/extension/string_extension.dart';
import '../../../core/util/app_colors.dart';
import '../../../core/util/app_text_styles.dart';

class WalkThrough extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  const WalkThrough({
    Key key,
    this.title = '',
    this.subTitle = '',
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 96, left: 39, right: 41),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: onBoardTitle.copyWith(
              color: AppColors.deepDarkBlue,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 11,
          ),
          Text(
            subTitle,
            style: onBoardSubTitle.copyWith(
              color: AppColors.deepDarkBlue,
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 110,
          ),
          SvgPicture.asset(
            image.svg,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
