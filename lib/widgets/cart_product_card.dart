import 'package:flutter/material.dart';
import 'package:soccer_app/models/cart_item.dart';

class CartProductCard extends StatelessWidget {
  const CartProductCard({
    super.key,
    required this.cartItem,
  });

  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 2, right: 8),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey.withOpacity(0.05),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cartItem.title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  'R\$ ${cartItem.price.toStringAsFixed(2)}',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
