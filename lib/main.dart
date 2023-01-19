import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soccer_app/constants/routes.dart';
import 'package:soccer_app/models/cart.dart';
import 'package:soccer_app/models/order_list.dart';
import 'package:soccer_app/models/product_list.dart';
import 'package:soccer_app/screens/home_page.dart';
import 'package:soccer_app/screens/orders_page.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductList(),
        ),
        ChangeNotifierProvider(
          create: (context) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (context) => OrderList(),
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
          Routes.ORDER: (context) => const OrdersPage(),
        },
      ),
    );
  }
}
