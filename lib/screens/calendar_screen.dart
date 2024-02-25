import 'package:flutter/material.dart';
import 'package:football_app/common/appbar.dart';
import 'package:football_app/widgets/giornata.dart';
import 'package:football_app/widgets/upcoming_lorenzo.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarAll(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    "Calendario",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: ListView(
                shrinkWrap: true,
                primary: false,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  Giornata(),
                  UpComingLorenzo(
                    awayLogo: "assets/images/man_united.png",
                    awayTitle: "Man United",
                    homeLogo: "assets/images/liverpool.png",
                    homeTitle: "Liverpool FC",
                    date: "30 Dec",
                    time: "06:30",
                    isFavorite: true,
                  ),
                  UpComingLorenzo(
                    awayLogo: "assets/images/swansea.png",
                    awayTitle: "Swansea AFC",
                    homeLogo: "assets/images/tottenham.png",
                    homeTitle: "Tottenham",
                    date: "30 Dec",
                    time: "06:30",
                    isFavorite: false,
                  ),
                  UpComingLorenzo(
                    awayLogo: "assets/images/stoke.png",
                    awayTitle: "Stoke City",
                    homeLogo: "assets/images/arsenal.png",
                    homeTitle: "Arsenal",
                    date: "30 Dec",
                    time: "06:30",
                    isFavorite: false,
                  ),
                  UpComingLorenzo(
                    awayLogo: "assets/images/southampton.png",
                    awayTitle: "Southhampton",
                    homeLogo: "assets/images/sunderland.png",
                    homeTitle: "Sunderland",
                    date: "30 Dec",
                    time: "06:30",
                    isFavorite: false,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
