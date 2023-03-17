import 'package:flutter/material.dart';

class StackCard extends StatelessWidget {
  final String text;
  final IconData cardIcon;
  final Color iconColor;
  final Color cardColor;
  final double x;
  final double y;
  const StackCard(
      {super.key,
      required this.text,
      required this.cardIcon,
      required this.iconColor,
      required this.cardColor,
      required this.x,
      required this.y});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(x, y),
      child: Transform.scale(
        scale: 1,
        child: Container(
          decoration: BoxDecoration(
              color: cardColor,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: const TextStyle(color: Colors.white, fontSize: 30),
                ),
                const SizedBox(
                  width: 120,
                ),
                Icon(
                  cardIcon,
                  color: iconColor,
                  size: 80,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
