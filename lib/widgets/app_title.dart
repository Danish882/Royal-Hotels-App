import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class RoyalHotelsTitle extends StatelessWidget {
  final double fontSize;
  final TextAlign? textAlign;
  final Color? textColor;
  const RoyalHotelsTitle({
    super.key,
    this.fontSize = 28,
    this.textAlign,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign ?? TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'ROYAL ',
            style: TextStyle(
              color: textColor ?? Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
            ),
          ),
          TextSpan(
            text: 'HOTELS',
            style: TextStyle(
              color: AppColors.limePrimary,
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
            ),
          ),
        ],
      ),
    );
  }
}
