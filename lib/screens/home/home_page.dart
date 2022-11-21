import 'package:flutter/material.dart';
import 'package:soccer_app/constants/app_title.dart';
import 'package:soccer_app/constants/colors.dart';
import 'package:soccer_app/mobx/controller.dart';
import 'package:soccer_app/screens/home/home_body.dart';
import 'package:soccer_app/screens/home/home_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controllerSearch = Controller();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
          IconButton(
            icon: const Icon(Icons.search_rounded),
            onPressed: () {
              controllerSearch.setVisibility();
            },
          ),
          SizedBox(width: size.width * 0.03),
          GestureDetector(
            child: const Icon(Icons.shopping_bag_rounded),
            onTap: () {},
          ),
          SizedBox(width: size.width * 0.03),
        ],
      ),
      body: const HomeBody(),
    );
  }
}
