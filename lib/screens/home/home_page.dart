import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soccer_app/constants/app_title.dart';
import 'package:soccer_app/constants/colors.dart';
import 'package:soccer_app/models/cart.dart';
import 'package:soccer_app/screens/home/home_body.dart';
import 'package:soccer_app/screens/home/home_drawer.dart';
import 'package:soccer_app/widgets/badge.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SafeArea(
        child: HomeDrawer(),
      ),
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        elevation: 0,
        title: const AppTitle(),
        actions: [
          Consumer<Cart>(
            child: IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
            builder: (context, cart, child) => Badge(
              value: cart.itemsCount.toString(),
              child: child!,
            ),
          )
        ],
      ),
      body: const HomeBody(),
    );
  }
}
