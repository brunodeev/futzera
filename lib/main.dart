import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soccer_app/models/product_list.dart';
import 'package:soccer_app/screens/home/home_page.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductList(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Soccer App',
        theme: ThemeData(
          fontFamily: 'Poppins',
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
        },
      ),
    );
  }
}
