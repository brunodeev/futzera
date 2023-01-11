import 'package:flutter/material.dart';

class CartProductCard extends StatelessWidget {
  const CartProductCard(
      {super.key,
      required this.name,
      required this.image,
      required this.price});

  final String name, image;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              height: 30,
              width: 30,
              child: Image.asset(image),
            ),
          ),
          Text(name),
          Text(price.toString()),
        ],
      ),
    );
  }
}
