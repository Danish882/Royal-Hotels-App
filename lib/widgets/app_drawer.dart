import 'package:flutter/material.dart';
import 'package:royal_hotels/widgets/app_title.dart';
import '../theme/app_colors.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.gray900,
      child: Column(
        children: [
          // ----- HEADER (Upar wala box) -----
          DrawerHeader(
            decoration: const BoxDecoration(color: AppColors.gray800),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const RoyalHotelsTitle(
                  fontSize: 22,
                  textAlign: TextAlign.left,
                ), // Left align ke liye
              ],
            ),
          ),

          // ----- GROUP 1: MAIN NAVIGATION -----
          _buildMenuItem(Icons.home, 'HOME', () => _navigateClose(context)),
          _buildMenuItem(Icons.bed, 'ROOMS', () => _navigateClose(context)),
          _buildMenuItem(
            Icons.calendar_today,
            'BOOKINGS',
            () => _navigateClose(context),
          ),
          _buildMenuItem(
            Icons.contact_mail,
            'CONTACT',
            () => _navigateClose(context),
          ),

          const Divider(color: AppColors.gray700),

          // ----- GROUP 2: ACCOUNT -----
          _buildMenuItem(
            Icons.login,
            'LOGIN',
            () => _navigateClose(context),
            isLime: true,
          ),
          _buildMenuItem(
            Icons.person_add,
            'SIGN UP',
            () => _navigateClose(context),
            isLime: true,
          ),
        ],
      ),
    );
  }

  // Drawer band karne ka professional function (har jagah copy-paste na karna pare)
  void _navigateClose(BuildContext context) {
    Navigator.pop(context);
    // Yahan baad mein screen navigation ka code add hoga (jaise Rooms screen kholna)
  }

  // Helper: Har menu item ka reusable style
  Widget _buildMenuItem(
    IconData icon,
    String title,
    VoidCallback onTap, {
    bool isLime = false,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: isLime ? AppColors.limePrimary : Colors.white54,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: isLime ? AppColors.limePrimary : Colors.white,
          fontWeight: isLime ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      onTap: onTap,
    );
  }
}
