import 'package:flutter/material.dart';

class TextDrawer extends StatelessWidget {
  const TextDrawer({
    Key? key,
    required this.text,
    required this.route,
    required this.icon,
  }) : super(key: key);

  final String text;
  final Icon icon;
  final Function() route;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: GestureDetector(
        onTap: route,
        child: ListTile(
          leading: icon,
          title: Text(
            text,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white.withOpacity(0.7),
            ),
          ),
        ),
      ),
    );
  }
}
