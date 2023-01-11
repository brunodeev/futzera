import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:soccer_app/screens/cart/cart_page.dart';
import 'package:soccer_app/screens/home/home_page.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Container(
              color: Colors.blueGrey,
              child: const Center(
                child: Text('Erro'),
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Soccer App',
              theme: ThemeData(
                fontFamily: 'Poppins',
              ),
              initialRoute: '/',
              routes: {
                '/': (context) => const HomePage(),
              },
            );
          }
          return Container(
            color: Colors.blueGrey,
          );
        });
  }
}
