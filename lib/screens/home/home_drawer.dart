import 'package:flutter/material.dart';
import 'package:soccer_app/constants/app_title.dart';
import 'package:soccer_app/screens/home/drawer_constants.dart';

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
            TextDrawer(
                text: 'Página Inicial',
                route: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/', (route) => false)),
            TextDrawer(text: 'Categorias', route: () {})
          ],
        ),
      ),
    );
  }
}
