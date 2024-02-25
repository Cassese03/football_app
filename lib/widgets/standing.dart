import 'package:flutter/material.dart';
import 'package:football_app/constants.dart';
import 'package:iconsax/iconsax.dart';

class Standing extends StatelessWidget {
  final String Logo, Title, GolScored, GolConcessed, Points;
  final bool isFavorite;
  final int position;
  final int Winning;
  final int Losing;
  const Standing({
    super.key,
    required this.Logo,
    required this.Title,
    required this.GolScored,
    required this.GolConcessed,
    required this.Points,
    required this.Winning,
    required this.Losing,
    required this.isFavorite,
    required this.position,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 15, top: 10),
          width: double.infinity,
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
              const SizedBox(width: 10),
              Text(
                position.toString(),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 2),
              Expanded(
                flex: 65,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          Logo,
                          height: 45,
                          width: 45,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Text(
                          Title,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '$GolScored / $GolConcessed',
                          style: const TextStyle(
                            fontSize: 12,
                            color: kprimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 35,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          Winning.toString(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Text(
                          Losing.toString(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Text(
                          Points,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
        // Positioned(
        //   top: 0,
        //   left: 0,
        //   child: Container(
        //     height: 115,
        //     width: 1.5,
        //     decoration: const BoxDecoration(
        //       color: kprimaryColor,
        //       borderRadius: BorderRadius.only(
        //         topLeft: Radius.circular(30),
        //         topRight: Radius.circular(30),
        //       ),
        //     ),
        //   ),
        // ),
        // Positioned(
        //   top: 0,
        //   right: 0,
        //   child: Container(
        //     height: 115,
        //     width: 1.5,
        //     decoration: const BoxDecoration(
        //       color: kprimaryColor,
        //       borderRadius: BorderRadius.only(
        //         topLeft: Radius.circular(30),
        //         topRight: Radius.circular(30),
        //       ),
        //     ),
        //   ),
        // ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            height: 5,
            width: double.infinity,
            decoration: BoxDecoration(
              color: (position == 6) ? kprimaryColor : Colors.transparent,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
        ),
        isFavorite
            ? const Positioned(
                top: 20,
                left: 5,
                child: Icon(
                  Iconsax.star5,
                  color: kprimaryColor,
                  size: 14,
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
