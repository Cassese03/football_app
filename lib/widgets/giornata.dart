import 'package:flutter/material.dart';
import 'package:football_app/constants.dart';

class Giornata extends StatelessWidget {
  const Giornata({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Card(
        color: kprimaryColor,
        child: Row(
          children: [
            Spacer(),
            Text(
              'Giornata 24',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
