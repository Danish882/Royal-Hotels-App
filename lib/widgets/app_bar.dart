import 'package:flutter/material.dart';
import 'package:royal_hotels/theme/app_colors.dart';
import 'package:royal_hotels/widgets/app_title.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.gray900,
      elevation: 0,
      title: Row(
        children: [
          Image.asset(
            "assets/images/app_icon.png",
            height: 30,
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.hotel, color: AppColors.limePrimary, size: 30),
          ),
          const SizedBox(width: 10),
          const RoyalHotelsTitle(fontSize: 20), // AppBar mein thoda chhota size
        ],
      ),
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
