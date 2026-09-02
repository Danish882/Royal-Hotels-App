import 'package:flutter/material.dart';
import 'package:royal_hotels/theme/app_colors.dart';
import 'package:royal_hotels/widgets/primary_button.dart';

class DetailScreen extends StatelessWidget {
  final String imageUrl;
  final String name;
  final int price;
  final double rating;
  final String description;
  const DetailScreen({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.rating,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.gray900,
        foregroundColor: AppColors.gray100,
        elevation: 0,
        title: Text(name, style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              imageUrl,
              fit: BoxFit.cover,
              height: 280,
              width: double.infinity,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 280,
                color: AppColors.gray200,
                child: const Icon(Icons.broken_image, size: 80),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: List.generate(5, (index) {
                      return Icon(
                        index < rating ? Icons.star : Icons.star_border,
                        color: AppColors.ratingYellow,
                        size: 22,
                      );
                    }),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "\$$price /night",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColors.limePrimary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "About: $description",
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.gray600,
                      height: 1.6,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: PrimaryButton(
                      text: "BOOK NOW",
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Booking Confirmed!"),
                            duration: Duration(seconds: 3),
                          ),
                        );
                      },
                    ),
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
