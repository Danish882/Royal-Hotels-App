import 'package:flutter/material.dart';
import 'package:royal_hotels/theme/app_colors.dart';
import 'package:royal_hotels/widgets/room_card.dart';

class RoomListing extends StatelessWidget {
  const RoomListing({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> rooms = [
      {
        'image':
            'https://images.unsplash.com/photo-1566073771259-6a8506099945?w=400',
        'name': 'Presidential Suite',
        'rating': 4.8,
        'price': 200,
      },
      {
        'image':
            'https://images.unsplash.com/photo-1582719478250-c89cae4dc85b?w=400',
        'name': 'Deluxe Room',
        'rating': 4.5,
        'price': 70,
      },
      {
        'image':
            'https://images.unsplash.com/photo-1618773928121-c32242e63f39?w=400',
        'name': 'Executive Room',
        'rating': 4.2,
        'price': 95,
      },
      {
        'image':
            'https://images.unsplash.com/photo-1584132967334-10e028bd69f7?w=400',
        'name': 'VIP Penthouse',
        'rating': 4.9,
        'price': 350,
      },
    ];
    return Container(
      color: AppColors.creamBackground,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'OUR LUXURY ROOMS',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: AppColors.gray900,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 16),
          Column(
            children: rooms.map((room) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: RoomCard(
                  imageUrl: room["image"] as String,
                  name: room["name"] as String,
                  rating: room["rating"] as double,
                  price: room["price"] as int,
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('${room['name']} selected!'),
                        duration: const Duration(seconds: 1),
                      ),
                    );
                  },
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
