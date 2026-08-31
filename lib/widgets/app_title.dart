import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

// ******** REUSABLE BRAND TITLE (FIXED VERSION) ********
class RoyalHotelsTitle extends StatelessWidget {
  final double fontSize;
  final TextAlign? textAlign;
  final Color?
  textColor; // Extra: Agar kabhi white ki jagah kuch aur chahiye toh

  const RoyalHotelsTitle({
    super.key,
    this.fontSize = 28,
    this.textAlign,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    // ******** IMPORTANT: 'const' HATAYA kyunki fontSize dynamic hai ********
    return RichText(
      textAlign: textAlign ?? TextAlign.center,
      text: TextSpan(
        children: [
          // 1. "ROYAL " - White color, lekin fontSize ab parameter se aa rahi hai
          TextSpan(
            text: 'ROYAL ',
            style: TextStyle(
              color:
                  textColor ??
                  Colors.white, // Agar user kuch aur de toh warna white
              fontWeight: FontWeight.bold,
              fontSize: fontSize, // <--- YAHAN LAGAYA (Pehle bhool gaya tha)
            ),
          ),
          // 2. "HOTELS" - Lime color, fontSize yahan bhi lagao
          TextSpan(
            text: 'HOTELS',
            style: TextStyle(
              color: AppColors.limePrimary,
              fontWeight: FontWeight.bold,
              fontSize: fontSize, // <--- YAHAN BHI LAGAYA
            ),
          ),
        ],
      ),
    );
  }
}
