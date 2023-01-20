import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:soccer_app/models/order.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({super.key, required this.order});

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          'R\$ ${order.total.toStringAsFixed(2)}',
        ),
        subtitle: Text(DateFormat('dd/MM/yyyy HH:mm').format(order.date)),
      ),
    );
  }
}
