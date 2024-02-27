import 'package:flutter/material.dart';

class Stadium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: 500,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/green-stadium.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}