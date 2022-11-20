import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
          text: 'Fut',
          style: TextStyle(
            fontFamily: 'Euclid',
            fontSize: 30,
            color: Colors.greenAccent,
          ),
          children: [
            TextSpan(
                text: 'zera',
                style: TextStyle(
                  fontFamily: 'Euclid',
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                )),
          ]),
    );
  }
}
