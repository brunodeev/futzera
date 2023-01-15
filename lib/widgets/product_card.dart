import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soccer_app/constants/colors.dart';
import 'package:soccer_app/models/cart.dart';
import 'package:soccer_app/models/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    final cart = Provider.of<Cart>(context);

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
            child: Image.network(
              product.imageUrl,
              height: 110,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      product.title,
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 15, right: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'R\$ ${product.price.toStringAsFixed(2)}',
                        style: const TextStyle(
                            color: kSecondaryColor, fontSize: 14),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        cart.addItem(product);
                        print(cart.itemsCount);
                      },
                      child: Icon(
                        Icons.shopping_cart,
                        size: 18,
                        color: cart.isOnCart(product)
                            ? Colors.greenAccent
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.favorite,
                        size: 18,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
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
