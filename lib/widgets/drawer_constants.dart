import 'package:flutter/material.dart';

class TextDrawer extends StatelessWidget {
  const TextDrawer({
    Key? key,
    required this.text,
    required this.route,
  }) : super(key: key);

  final String text;
  final Function() route;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: GestureDetector(
        onTap: route,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
      ),
    );
  }
}
