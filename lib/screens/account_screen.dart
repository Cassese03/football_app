import 'package:flutter/material.dart';
import 'package:football_app/common/appbar.dart';
import 'package:football_app/constants.dart';
import 'package:badges/badges.dart' as badges;

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});
  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarAll(),
      body: Container(
        color: kprimaryColor,
        child: Column(
          children: [
            Expanded(
              flex: 50,
              child: Row(
                children: [
                  const Spacer(),
                  CircleAvatar(
                    backgroundColor: kbackgroundColor,
                    radius: 100,
                    child: badges.Badge(
                      position: badges.BadgePosition.topEnd(),
                      badgeContent: const Icon(
                        Icons.edit,
                      ),
                      badgeStyle: const badges.BadgeStyle(
                        badgeColor: Colors.white,
                      ),
                      onTap: () async {
                        // mark the function as async
                        print('tap');
                        // Show PopUp

                        // await the dialog
                        await showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const AlertDialog(
                              title: Text(
                                'About',
                                style: TextStyle(fontFamily: "Smash"),
                              ),
                              content: Text(
                                'This is a placeholder. This is a placeholder. This is a placeholder. This is a placeholder.',
                                style: TextStyle(fontFamily: "Smash"),
                              ),
                            );
                          },
                        );
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/images/arsenal.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            const Expanded(
              flex: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(),
                        Text(
                          style: TextStyle(
                            color: Colors.brown,
                            fontSize: 24,
                          ),
                          'Nome',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                          'Lorenzo',
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(),
                        Text(
                          style: TextStyle(
                            color: Colors.brown,
                            fontSize: 24,
                          ),
                          'Cognome',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                          'Cassese',
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(),
                        Text(
                          style: TextStyle(
                            color: Colors.brown,
                            fontSize: 24,
                          ),
                          'Ruolo',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                          'Difensore',
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(),
                        Text(
                          style: TextStyle(
                            color: Colors.brown,
                            fontSize: 24,
                          ),
                          'Squadra',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                          'Raimon Nola',
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
