import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:football_app/common/appbar.dart';
import 'package:football_app/widgets/standing.dart';
import 'package:football_app/widgets/standingheader.dart';

class StandingScreen extends StatefulWidget {
  const StandingScreen({super.key});

  @override
  State<StandingScreen> createState() => _StandingScreenState();
}

class _StandingScreenState extends State<StandingScreen> {
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
                    "Standing Lead",
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                shrinkWrap: true,
                primary: false,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  StandingHeader(),
                  Standing(
                    Logo: "assets/images/man_united.png",
                    Title: "Man United",
                    GolScored: "30",
                    GolConcessed: "10",
                    Points: "30",
                    isFavorite: true,
                    position: 1,
                  ),
                  Standing(
                    Logo: "assets/images/stoke.png",
                    Title: "Stoke City",
                    GolScored: "27",
                    GolConcessed: "20",
                    Points: "26",
                    isFavorite: false,
                    position: 2,
                  ),
                  Standing(
                    Logo: "assets/images/southampton.png",
                    Title: "Southhampton",
                    GolScored: "20",
                    GolConcessed: "22",
                    Points: "18",
                    isFavorite: false,
                    position: 3,
                  ),
                  Standing(
                    Logo: "assets/images/liverpool.png",
                    Title: "Liverpool",
                    GolScored: "23",
                    GolConcessed: "27",
                    Points: "16",
                    isFavorite: false,
                    position: 4,
                  ),
                  Standing(
                    Logo: "assets/images/FCBarcelona.png",
                    Title: "Barcelona",
                    GolScored: "18",
                    GolConcessed: "24",
                    Points: "14",
                    isFavorite: false,
                    position: 4,
                  ),
                  Standing(
                    Logo: "assets/images/west_ham.png",
                    Title: "West Ham",
                    GolScored: "16",
                    GolConcessed: "22",
                    Points: "12",
                    isFavorite: false,
                    position: 4,
                  ),
                  Standing(
                    Logo: "assets/images/swansea.png",
                    Title: "Swansea AFC",
                    GolScored: "17",
                    GolConcessed: "27",
                    Points: "10",
                    isFavorite: false,
                    position: 6,
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
