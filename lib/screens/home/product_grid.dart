import 'package:flutter/material.dart';
import 'package:soccer_app/screens/detail/product_detail.dart';

import '../../models/product_model.dart';
import '../../widgets/product_card.dart';

class ProductGrid extends StatefulWidget {
  const ProductGrid({super.key});

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  final productList = product;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 200,
          childAspectRatio: 0.5),
      itemCount: product.length,
      itemBuilder: (_, index) => GestureDetector(
        child: ProductCard(
            name: product[index].name,
            image: product[index].images[0],
            price: product[index].price),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ProductDetail(
                label: product[index].label,
                list: product[index].images,
                price: product[index].price.toStringAsFixed(2),
              ),
            ),
          );
        },
      ),
    );
  }
}
