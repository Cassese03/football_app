import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:football_app/constants.dart';
import 'package:football_app/screens/main_screen.dart';
import 'package:football_app/screens/notification_screen.dart';
import 'package:iconsax/iconsax.dart';

class AppbarAll extends StatelessWidget implements PreferredSizeWidget {
  AppbarAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          scaffoldKey.currentState!.openDrawer();
        },
        icon: const Icon(Iconsax.category),
      ),
      title: const Row(
        children: [
          Spacer(),
          Text(
            "F",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.sports_soccer,
            color: kprimaryColor,
          ),
          Icon(
            Icons.sports_soccer,
            color: kprimaryColor,
          ),
          Text(
            "tball  ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Frontier",
            style: TextStyle(
              color: kprimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NotificationScreen(),
              ),
            );
          },
          icon: const Icon(Icons.notifications_active_outlined),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
