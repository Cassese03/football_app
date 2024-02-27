import 'package:flutter/material.dart';

class Stadium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/green-stadium.jpg'),
          scale: 0.75,
        ),
      ),
    );
  }
}
