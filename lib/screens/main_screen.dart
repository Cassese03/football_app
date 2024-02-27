import 'package:flutter/material.dart';
import 'package:football_app/common/drawer.dart';
import 'package:football_app/constants.dart';
import 'package:football_app/screens/StadiumScreen.dart';
import 'package:football_app/screens/account/account_screen.dart';
import 'package:football_app/screens/calendar_screen.dart';
import 'package:football_app/screens/home_screen.dart';
import 'package:football_app/screens/standing_screen.dart';
import 'package:football_app/widgets/main.dart';
import 'package:iconsax/iconsax.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

// ignore: must_be_immutable
class MainScreen extends StatefulWidget {
  int currentTab;
  MainScreen({super.key, required this.currentTab});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List screens = [
    StadiumScreen(),
    const CalendarScreen(),
    const StandingScreen(),
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: kbackgroundColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.grey.shade200),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavItem(
              title: "Home",
              icon: Iconsax.home,
              isActive: widget.currentTab == 0,
              onTap: () {
                setState(() {
                  widget.currentTab = 0;
                });
              },
            ),
            BottomNavItem(
              title: "Calender",
              icon: Iconsax.calendar_1,
              isActive: widget.currentTab == 1,
              onTap: () {
                setState(() {
                  widget.currentTab = 1;
                });
              },
            ),
            BottomNavItem(
              title: "Standing",
              icon: Iconsax.chart,
              isActive: widget.currentTab == 2,
              onTap: () {
                setState(() {
                  widget.currentTab = 2;
                });
              },
            ),
            BottomNavItem(
              title: "Account",
              icon: Iconsax.profile_circle,
              isActive: widget.currentTab == 3,
              onTap: () {
                setState(() {
                  widget.currentTab = 3;
                });
              },
            ),
          ],
        ),
      ),
      body: screens[widget.currentTab],
      drawer: const DrawerLorenzo(),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function() onTap;
  final IconData icon;
  const BottomNavItem({
    super.key,
    required this.title,
    required this.isActive,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isActive ? kprimaryColor : kbackgroundColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: isActive ? Colors.white : Colors.grey.shade400,
            ),
            isActive
                ? Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
