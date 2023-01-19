import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soccer_app/models/order_list.dart';

import '../constants/colors.dart';
import '../widgets/home_drawer.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final OrderList orders = Provider.of(context);
    return Scaffold(
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
        title: const Text('Meus pedidos'),
      ),
      drawer: const SafeArea(
        child: HomeDrawer(),
      ),
      body: ListView.builder(
        itemCount: orders.items.length,
        itemBuilder: (context, index) => Text(
          orders.items[index].total.toString(),
        ),
      ),
    );
  }
}
