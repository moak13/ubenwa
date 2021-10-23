import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/extension/string_extension.dart';

class SocialButton extends StatelessWidget {
  final String image;
  final Function onTap;
  const SocialButton({
    Key key,
    this.image,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 22,
        width: 22,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          image.svg,
          height: 22,
          width: 22,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
