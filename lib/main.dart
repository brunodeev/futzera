import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soccer_app/constants/routes.dart';
import 'package:soccer_app/models/cart.dart';
import 'package:soccer_app/models/product_list.dart';
import 'package:soccer_app/screens/cart_page.dart';
import 'package:soccer_app/screens/home_page.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductList(),
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Soccer App',
        theme: ThemeData(
          fontFamily: 'Poppins',
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          Routes.CART: (context) => const CartPage(),
        },
      ),
    );
  }
}
