import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soccer_app/models/product_model.dart';

class FavoriteProductCard extends StatelessWidget {
  const FavoriteProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);

    return ListTile(
      trailing: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          product.imageUrl,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(product.title),
      subtitle: Text('R\$ ${product.price.toStringAsFixed(2)}'),
    );
  }
}
