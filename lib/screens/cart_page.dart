import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soccer_app/models/cart.dart';
import 'package:soccer_app/models/order_list.dart';
import 'package:soccer_app/widgets/cart_product_card.dart';

import '../constants/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    Cart cart = Provider.of(context);
    var items = cart.items.values.toList();

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
        title: const Text('Carrinho'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) =>
                  CartProductCard(cartItem: items[index]),
              itemCount: items.length,
            ),
          ),
          Card(
            margin: const EdgeInsets.all(15),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total: ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Chip(
                    backgroundColor: kPrimaryColor,
                    label: Text(
                      'R\$${cart.totalAmount.toStringAsFixed(2)}',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Provider.of<OrderList>(context).addOrder(cart);
                      cart.clear();
                    },
                    style: TextButton.styleFrom(foregroundColor: kPrimaryColor),
                    child: const Text('COMPRAR',
                        style: TextStyle(color: kPrimaryColor)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
