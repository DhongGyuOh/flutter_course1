import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color txtColor;

  const Button(
      {super.key,
      required this.text,
      required this.txtColor,
      required this.bgColor});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: const BorderRadius.all(Radius.elliptical(20, 20))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          child: Text(
            text,
            style: TextStyle(
                color: txtColor, fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ));
  }
}
