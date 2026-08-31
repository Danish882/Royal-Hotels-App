import 'package:flutter/material.dart';
import 'package:royal_hotels/widgets/app_title.dart';
import '../theme/app_colors.dart';
import 'primary_button.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.gray900,
      padding: const EdgeInsets.all(24),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'WELCOME TO',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 4,
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 12),
            const RoyalHotelsTitle(fontSize: 38),
            const SizedBox(height: 20),

            const Text(
              'Where Luxury Meets Comfort',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white54,
                fontSize: 16,
                letterSpacing: 1,
              ),
            ),

            const SizedBox(height: 40),

            PrimaryButton(
              text: 'BOOK YOUR STAY',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Booking feature coming soon!')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
