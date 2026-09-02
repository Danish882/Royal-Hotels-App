import 'package:flutter/material.dart';
import 'package:royal_hotels/widgets/app_bar.dart';
import 'package:royal_hotels/widgets/app_drawer.dart';
import 'package:royal_hotels/widgets/hero_section.dart';
import 'package:royal_hotels/widgets/room_listing.dart';
import '../theme/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray900,
      appBar: const AppBarWidget(),
      endDrawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Column(children: const [HeroSection(), RoomListing()]),
      ),
    );
  }
}
