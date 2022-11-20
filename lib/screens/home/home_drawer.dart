import 'package:flutter/material.dart';
import 'package:soccer_app/constants/app_title.dart';

import '../../constants/colors.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kPrimaryColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 50),
                  child: AppTitle(),
                ),
              ],
            ),
            Text(
              'Página Inicial',
              style: TextStyle(color: Colors.white.withOpacity(0.7)),
            ),
            Text(
              'Categorias',
              style: TextStyle(color: Colors.white.withOpacity(0.7)),
            ),
          ],
        ),
      ),
    );
  }
}
