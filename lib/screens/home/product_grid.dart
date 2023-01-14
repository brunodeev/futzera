import 'package:flutter/material.dart';
import 'package:soccer_app/data/dummy_data.dart';
import 'package:soccer_app/models/product_model.dart';
import 'package:soccer_app/screens/detail/product_detail.dart';
import '../../widgets/product_card.dart';

class ProductGrid extends StatefulWidget {
  const ProductGrid({super.key});

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

final List<Product> loadedProducts = dummy_products;

class _ProductGridState extends State<ProductGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 200,
          childAspectRatio: 0.5),
      itemCount: loadedProducts.length,
      itemBuilder: (_, index) {
        return GestureDetector(
          child: ProductCard(
            product: loadedProducts[index],
          ),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    ProductDetail(product: loadedProducts[index]),
              ),
            );
          },
        );
      },
    );
  }
}
