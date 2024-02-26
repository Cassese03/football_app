import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:football_app/constants.dart';

class AppbarNotify extends StatelessWidget implements PreferredSizeWidget {
  AppbarNotify({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back),
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
          color: Colors.transparent,
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_active_outlined,
            color: Colors.transparent,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
