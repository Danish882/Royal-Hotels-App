import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import 'primary_button.dart'; // Humara pehle se bana hua lime button

class HotelCard extends StatelessWidget {
  // ---------- PROPERTIES (Jo hum bahar se dengay) ----------
  final String imageUrl; // Hotel ki photo
  final String name; // Hotel ka naam
  final double rating; // Rating (1.0 se 5.0 tak)
  final int price; // Price per night
  final VoidCallback onViewPressed; // "View" button dabane par kya karna hai?

  const HotelCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.rating,
    required this.price,
    required this.onViewPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // 1. Card ko thoda sa shadow aur rounded corners
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

      // 2. ClipRRect: Image ko card ke corners ke hisaab se cut karega
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ---------- IMAGE (Top wala hissa) ----------
            Image.network(
              imageUrl,
              height: 180,
              width: double.infinity, // Poori width le lo
              fit: BoxFit.cover, // Image apne aap crop ho kar fit ho jaye
              errorBuilder: (context, error, stackTrace) {
                // Agar image na mile toh placeholder dikhao
                return Container(
                  height: 180,
                  color: AppColors.gray200,
                  child: const Icon(Icons.broken_image, size: 50),
                );
              },
            ),

            // ---------- TEXT / INFO (Neeche wala hissa) ----------
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Hotel Name (Bold)
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.gray900,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),

                  const SizedBox(height: 6),

                  // ---------- RATING STARS (Yellow stars) ----------
                  Row(
                    children: List.generate(5, (index) {
                      // Agar index rating se kam hai toh full star, warna empty star
                      return Icon(
                        index < rating ? Icons.star : Icons.star_border,
                        color: AppColors.ratingYellow,
                        size: 18,
                      );
                    }),
                  ),

                  const SizedBox(height: 10),

                  // ---------- PRICE + BUTTON (Row mein) ----------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Price (Left side)
                      Text(
                        '\$$price / night',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.gray800,
                        ),
                      ),

                      PrimaryButton(text: 'View', onPressed: onViewPressed),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
