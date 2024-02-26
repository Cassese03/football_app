import 'package:flutter/material.dart';
import 'package:football_app/constants.dart';

class Notify extends StatelessWidget {
  final String Logo, Title, Content;
  final int Read;
  const Notify({
    super.key,
    required this.Logo,
    required this.Title,
    required this.Content,
    required this.Read,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 15, top: 10),
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 15,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: kbackgroundColor,
            border: Border.all(
              color: Colors.grey.shade400,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 90,
                child: Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: Column(
                        children: [
                          Image.asset(
                            Logo,
                            height: 45,
                            width: 45,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 90,
                      child: Column(
                        children: [
                          Text(
                            Title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            Content,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.clip,
                            style: const TextStyle(
                              fontSize: 12,
                              color: kprimaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 10,
                child: Row(
                  children: [
                    const Spacer(),
                    Icon(
                      (Read == 0)
                          ? Icons.notifications_active
                          : Icons.notifications_active_outlined,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
