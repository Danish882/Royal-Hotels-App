import 'package:flutter/material.dart';
import 'package:royal_hotels/widgets/app_bar.dart';
import 'package:royal_hotels/widgets/app_drawer.dart';
import 'package:royal_hotels/widgets/hero_section.dart';
import '../theme/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray900,
      appBar: const AppBarWidget(),
      endDrawer: const AppDrawer(),
      body: const HeroSection(),
    );
  }
}
