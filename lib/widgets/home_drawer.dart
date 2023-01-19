import 'package:flutter/material.dart';
import 'package:soccer_app/constants/app_title.dart';
import 'package:soccer_app/constants/routes.dart';
import 'package:soccer_app/widgets/drawer_constants.dart';

import '../constants/colors.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 0, 50),
                child: AppTitle(),
              ),
            ],
          ),
          TextDrawer(
            icon: const Icon(
              Icons.web,
              color: Colors.white,
            ),
            text: 'Página Inicial',
            route: () {
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            },
          ),
          TextDrawer(
            icon: const Icon(
              Icons.badge_rounded,
              color: Colors.white,
            ),
            text: 'Meus Pedidos',
            route: () {
              Navigator.pushNamed(context, Routes.ORDER);
            },
          ),
        ],
      ),
    );
  }
}
