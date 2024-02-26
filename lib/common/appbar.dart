import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:football_app/constants.dart';
import 'package:football_app/screens/main_screen.dart';
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
            //   showDialog(
            //     context: context,
            //     builder: (context) => Stack(
            //       children: [
            //         Positioned(
            //           width: 50,
            //           child: Column(
            //             children: [
            //               const Card(
            //                 color: kprimaryColor,
            //                 child: Text('Notifica'),
            //               ),
            //               const Card(
            //                 color: kprimaryColor,
            //                 child: Text('Notifica'),
            //               ),
            //               const Card(
            //                 color: kprimaryColor,
            //                 child: Text('Notifica'),
            //               ),
            //               const Card(
            //                 color: kprimaryColor,
            //                 child: Text('Notifica'),
            //               ),
            //               const Card(
            //                 color: kprimaryColor,
            //                 child: Text('Notifica'),
            //               ),
            //               ElevatedButton(
            //                 onPressed: () => Navigator.pop(context),
            //                 child: const Text(
            //                   'Chiudi',
            //                 ),
            //               )
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ).then((valueFromDialog) {
            //     // use the value as you wish
            //     print(valueFromDialog);
            //   });
          },
          icon: const Icon(Iconsax.notification),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
