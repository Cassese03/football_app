import 'package:flutter/material.dart';
import 'package:football_app/common/appbarnotify.dart';
import 'package:football_app/constants.dart';
import 'package:football_app/widgets/notify.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarNotify(),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Text(
                    "Notifiche",
                    style: TextStyle(
                      fontSize: 18,
                      color: kprimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Notify(
                Logo: "assets/images/raimon_perde.jpg",
                Title: "Dura Sconfitta",
                Content:
                    "Dura sconfitta per la Raimon, IMMERITATA!!! Testa alla PROSSIMA!",
                Read: 0,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Notify(
                Logo: "assets/images/raimon.jpg",
                Title: "Attilio Ma che Combini ?!",
                Content: "Attilio ha scopato una vecchia. Incredibile!!!",
                Read: 0,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Notify(
                Logo: "assets/images/raimon.jpg",
                Title: "Capocannoniere Insolito",
                Content:
                    "Per favore non fate segnare Agostino, mi sembra uno zoppo che corre.",
                Read: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
