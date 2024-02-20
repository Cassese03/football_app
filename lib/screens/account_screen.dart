import 'package:flutter/material.dart';
import 'package:football_app/common/appbar.dart';
import 'package:football_app/constants.dart';

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
                    child: Image.asset(
                      'assets/images/arsenal.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: Icon(
                      size: 26,
                      Icons.edit,
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
