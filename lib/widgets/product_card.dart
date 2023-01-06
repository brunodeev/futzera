import 'package:flutter/material.dart';
import 'package:soccer_app/constants/colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.name,
    required this.image,
    super.key,
    required this.price,
  });

  final String name, image;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kPrimaryColor,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.asset(
              image,
              height: 110,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'R\$ ${price.toStringAsFixed(2)}',
                        style: const TextStyle(
                            color: kSecondaryColor, fontSize: 14),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_cart,
                        size: 20,
                        color: Colors.greenAccent,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
