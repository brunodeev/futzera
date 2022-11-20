import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Indicator extends StatelessWidget {
  final bool isActive;
  const Indicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 8),
      height: 8,
      width: isActive ? 22 : 8,
      decoration: BoxDecoration(
          color: isActive ? kPrimaryColor : Colors.grey.withOpacity(0.7),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
