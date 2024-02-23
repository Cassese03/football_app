import 'package:flutter/material.dart';
import 'package:football_app/common/appbar.dart';
import 'package:football_app/constants.dart';
import 'package:football_app/widgets/upcoming_match.dart';

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
                    "Up-Coming Matches",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(foregroundColor: kprimaryColor),
                    child: const Text("See all"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                shrinkWrap: true,
                primary: false,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  UpComingMatch(
                    awayLogo: "assets/images/man_united.png",
                    awayTitle: "Man United",
                    homeLogo: "assets/images/liverpool.png",
                    homeTitle: "Liverpool FC",
                    date: "30 Dec",
                    time: "06:30",
                    isFavorite: true,
                  ),
                  UpComingMatch(
                    awayLogo: "assets/images/swansea.png",
                    awayTitle: "Swansea AFC",
                    homeLogo: "assets/images/tottenham.png",
                    homeTitle: "Tottenham",
                    date: "30 Dec",
                    time: "06:30",
                    isFavorite: false,
                  ),
                  UpComingMatch(
                    awayLogo: "assets/images/stoke.png",
                    awayTitle: "Stoke City",
                    homeLogo: "assets/images/arsenal.png",
                    homeTitle: "Arsenal",
                    date: "30 Dec",
                    time: "06:30",
                    isFavorite: false,
                  ),
                  UpComingMatch(
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
