import 'package:flutter/material.dart';
import 'package:soccer_app/constants/colors.dart';

class SectionLabel extends StatelessWidget {
  const SectionLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Text(
            'Tendências',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: kPrimaryColor.withOpacity(0.8)),
          ),
          Icon(
            Icons.local_fire_department_outlined,
            color: kPrimaryColor.withOpacity(0.8),
          ),
        ],
      ),
    );
  }
}
