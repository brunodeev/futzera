import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:soccer_app/constants/app_title.dart';
import 'package:soccer_app/constants/colors.dart';
import 'package:soccer_app/screens/Cart/cart_page.dart';
import 'package:soccer_app/screens/home/home_body.dart';
import 'package:soccer_app/screens/home/home_drawer.dart';

import '../../data/firebase_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: IconButton(
                  icon: const Icon(
                    Icons.shopping_cart,
                    size: 20,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const CartPage(),
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                top: 12,
                left: 25,
                child: Container(
                    height: 13,
                    width: 13,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 91, 211, 153),
                      shape: BoxShape.circle,
                    ),
                    child: StreamBuilder<QuerySnapshot>(
                        stream: getCartList(),
                        builder: (_, snapshot) {
                          switch (snapshot.connectionState) {
                            case ConnectionState.none:
                            case ConnectionState.waiting:
                              return Center(
                                child: CircularProgressIndicator(
                                  color: Colors.grey[900],
                                ),
                              );
                            case ConnectionState.active:
                            case ConnectionState.done:
                              return Center(
                                child: Text(
                                  snapshot.data!.docs.length.toString(),
                                  style: const TextStyle(
                                      fontSize: 9,
                                      color: kPrimaryColor,
                                      fontWeight: FontWeight.w600),
                                ),
                              );
                          }
                        })),
              ),
            ],
          ),
          SizedBox(width: size.width * 0.03),
        ],
      ),
      body: const HomeBody(),
    );
  }
}
