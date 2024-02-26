import 'package:flutter/material.dart';
import 'package:football_app/constants.dart';
import 'package:football_app/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Footbal Frontier',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "PlusJakartaSans",
        scaffoldBackgroundColor: kbackgroundColor,
        appBarTheme: const AppBarTheme(color: kbackgroundColor),
        colorScheme: ColorScheme.fromSeed(
          seedColor: kprimaryColor,
          background: kbackgroundColor,
        ),
      ),
      home: MainScreen(
        currentTab: 0,
      ),
    );
  }
}
