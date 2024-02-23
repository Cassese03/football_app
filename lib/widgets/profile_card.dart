import 'package:flutter/material.dart';
import 'package:football_app/constants.dart';

class ProfileCard extends StatelessWidget {
  final double numero;
  final String content;
  const ProfileCard({
    super.key,
    required this.numero,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kbackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          20,
        ),
        side: const BorderSide(
          color: kprimaryColor,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            numero.toString(),
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            content,
            style: const TextStyle(
              fontSize: 16,
              color: kprimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
